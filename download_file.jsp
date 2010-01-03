<%@page import="java.sql.*, java.util.Date"%>
<%!
static {
	try {
		Class.forName("com.mysql.jdbc.Driver");
	}
	catch (Exception e) {
		throw new RuntimeException(e);
	}
}

private static final String VERSION_STABLE = "jforum-2.1.8";
private static final String VERSION_BETA = "jforum-3.0";
private static final String CONNECTION_URL = "jdbc:mysql://localhost/jforum?user=root&password=root";
%>
<%
String type = request.getParameter("type");
String file = null;

if ("zipStable".equals(type)) {
	file = VERSION_STABLE + ".zip";
}
else if ("warStable".equals(type)) {
	file = VERSION_STABLE + ".war";
}
else if ("srcStable".equals(type)) {
	file = VERSION_STABLE + "-src.zip";
}
else if ("zipBeta".equals(type)) {
	file = VERSION_BETA + ".zip";
}
else if ("srcBeta".equals(type)) {
	file = VERSION_BETA + "-src.zip";
}

if (file == null) {
	out.println("<h3>Cannot find the requested file</h3>");
}
else {
	Connection conn = null;
	PreparedStatement p = null;
	
	try {
		conn = DriverManager.getConnection(CONNECTION_URL);
		p = conn.prepareStatement("INSERT INTO releases_download (file, downloadDate) VALUES (?, ?)");
		p.setString(1, file);
		p.setTimestamp(2, new Timestamp(new Date().getTime()));
		p.executeUpdate();
	}
	finally {
		if (p != null) {
			try { p.close(); } catch (Exception e) {}
		}
		
		if (conn != null) {
			try { conn.close(); } catch (Exception e) {}
		}
	}
	
	response.sendRedirect("releases/" + file);
}
%>
