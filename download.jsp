<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>

<div id="content_wrapper">
	<c:set var="currentPage" value="download"/>
	<%@include file="menu.jsp"%>
    
    <div id="cnt_cnt">
		<%@include file="jforum_box.jsp"%>
        
        <div class="size2 fr text1" id="bg-gray">
        	<h2>Installation &amp; configuration</h2>
			<p>jforum provides a graphical installer through the web browser, which simplifies the entire process.</p>
			<p>Please read the<a href="install.jsp"> installation instructions</a> before you start, so you dont't run into any problems. </p>
			
			<p><strong>Upgrading</strong></p>
			<p>To upgrade from previous versions of jforum is very easy and painless. We always work hard to make the process the easiest possible. </p>
			<p>If you are going to upgrade your jforum installation, <a href="upgrade.jsp">check out the instructions here</a>. </p>
			
			<p><strong>Bugs</strong></p>
			<p>If you ran into a problem, <a href="bugs.jsp">check out the bug reporting tool</a>. 
				The <a href="community.jsp">forums</a> are a good place to ask for information as well. </p>
        </div><!-- box size2-->
        	
        <div class="size1 fl text1">
        	<h2>Download</h2>
           	<p>
				Don't forget to check out the <a href="install.jsp">installation instructions</a> page. 
				We would love to hear from you. Leave us a <a href="contact.jsp" class="blue">feedback</a> whenever possible.
			</p>
			
			<p><strong>License agreement</strong></p>
			<p>
				
				The current version of jforum is the result of years of work of many people, who have
				spent thousands of hours developing the software.
			</p>
			
			<p>
				JForum has its source code open under the terms of the <a href="http://en.wikipedia.org/wiki/BSD_license" class="blue">BSD license</a>, 
				which basically states that you can use and customize jforum without any cost. 
			</p>
			
			<p>
				Although, you are required to maintain full credits to the project, and we sincerely ask you to link back to us whenever possible. 
			</p>
			
			<p><strong>Files</strong></p>
			<p><a href="download_file.jsp?type=zip">Download jforum ZIP package </a></p>
			<p><a href="download_file.jsp?type=war">Download jforum WAR package </a></p>
			<p><a href="download_file.jsp?type=src">Download jforum source code </a></p>
        </div><!-- size 1-->
    </div><!-- cnt cnt -->
</div><!-- content wrapper -->

<%@include file="footer.jsp"%>
