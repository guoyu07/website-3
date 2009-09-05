<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>

<div id="content_wrapper">    
	<c:set var="currentPage" value="install_no_wizard"/>
	<%@include file="menu.jsp"%>
	
    <div id="cnt_cnt">
		<%@include file="jforum_box.jsp"%>

	<div class="size1 fl text1">
        	<h2>Installation and configuration &raquo; manual install</h2>
           	<p>Here will be shown how to manually configure and install JForum. It is assumed that the you has some knowledge on how to install / configure a Java servlet Container ( or already has one up and running ), and the database is properly configured.</p>

<p>For automated installation, check the <a href="install.jsp">Installation and configuration &raquo; wizard</a> section.</p>

<p>Note: These instructions are for the installation of JForum, release version 2.1.8. Some of the steps here described may not be valid for older versions, which are no longer supported.</p>

		<!-- Installation -->
		<div class="blue-title"><strong>Downloading JForum</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<p>To get JForum, go to the <a href="download.jsp">download page</a> and get the latest version.</p>

		<!-- General -->
		<div class="blue-title"><strong>Unpacking</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		 <p>After the download, unpack the .ZIP file into your webapp's directory (or anyplace you want to put it). A directory named JForum-<release> will be created, where <release> is the version, which may be "2.0", "2.1.7" etc... this it just for easy version identification.</p>

<p>You can rename the directory if you want. The next step you should do is register the JForum application within your Servlet Container, like <a href="http://jakarta.apache.org/tomcat">Tomcat</a>. This document will use the context name "jforum", but of course you can use any name you want.</p> 

		<!-- Posting Messages -->
		<div class="blue-title"><strong>Directory permissions</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<p>JForum expects that some directories are writable by the webserver. Before you start installing, please check if the following directories, and their sub-directories, exist and have full write permissions:</p>
		<ul class="ul-orange">
			<li>upload</li>
			<li>tmp</li>
			<li>images</li>
			<li>WEB-INF/config</li>
			<li>WEB-INF/jforumLuceneIndex</li>
		</ul>

		<!-- Moderation -->
		<div class="blue-title"><strong>Database configuration</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>

<p>First of all, you must have <a href="http://www.mysql.com/">MySQL</a>, <a href="http://www.oracle.com/">Oracle</a> or <a href="http://www.postgresql.org/">PostgreSQL</a> installed and properly configured. <a href="http://www.hsqldb.org/">HSQLDB</a> is supported as well, and has built-in support, so you don't need to download it (eg, it is an embedded database).</p>

<p>Open the file WEB-INF/config/SystemGlobals.properties. Now search for a key named database.driver.name and configure it according to the following table:</p>

<table align="center" bgcolor="#3aa315" cellspacing="2" width="70%">
					<tbody><tr>
						<th class="th-header">Database</th>
						<th class="th-header">Key value </th>
					</tr>

	
					<tr class="fields">
						<td align="center">MySQL</td>
						<td>mysql</td>
					</tr>
	
					<tr class="fields">
						<td align="center">PostgreSQL</td>
						<td>postgresql</td>

					</tr>
	
					<tr class="fields">
						<td align="center">HSQLDB</td>
						<td>hsqldb</td>
					</tr>
	
					<tr class="fields">
						<td align="center">Oracle</td>

						<td>oracle</td>
					</tr>
				</tbody></table>	

<p>The default value is mysql, which means JForum will try to use MySQL. Note that the value should be in lowercase.</p>

<p>Next, you can tell JForum whether to use a Connection Pool or not. A connection pool will increase the performance of your application, but there are some situations where the use of a connection pool is not recommended or even possible, so you can change it according to your needs.</p>

<p>By default JForum uses a connection pool, option which is specified by the key database.connection.implementation. The following table shows the possible values for this key:</p> 

<table align="center">
		<tbody><tr>
			<td><table align="center" bgcolor="#3aa315" cellspacing="2" width="100%">
					<tbody><tr>
						<th class="th-header">Connection Storage Type</th>
						<th class="th-header">Key value </th>

					</tr>
					<tr class="fields">
						<td align="center">Pooled Connections</td>
						<td><i>net.jforum.PooledConnection</i></td>
					</tr>
					<tr class="fields">
						<td align="center">Simple Connections</td>

						<td><i>net.jforum.SimpleConnection</i></td>
					</tr>
					<tr class="fields">
						<td align="center">DataSource Connections</td>
						<td><i>net.jforum.DataSourceConnection</i></td>
					</tr>
			</tbody></table></td>

		</tr>
	</tbody></table>

<p>If you have chosen <i>net.jforum.DataSourceConnection</i>, then set the name of the datasource in key <i>database.datasource.name</i>, and ignore the table below. Otherwise, do the following steps:</p>
<p>Edit the file <i>WEB-INF/config/database/&lt;DBNAME&gt;/&lt;DBNAME&gt;.properties</i>, where <i>&lt;DBNAME&gt;</i> is the database name you are using - for instance, mysql, postgresql or hsqldb. In this file there are some options you should change, according to the table below: </p>


	<table align="center">
		<tbody><tr>
			<td><table align="center" bgcolor="#3aa315" cellspacing="2" width="70%">
					<tbody><tr>
						<th class="th-header">Key name</th>
						<th class="th-header">key value description</th>
					</tr>
					<tr class="fields">

						<td align="center">database.connection.username</td>
						<td><i>Database username</i></td>
					</tr>
					<tr class="fields">
						<td align="center">database.connection.password</td>
						<td><i>Database password</i></td>
					</tr>

					<tr class="fields">
						<td align="center">database.connection.host</td>
						<td><i>The host where the database is located</i></td>
					</tr>
					<tr class="fields">
						<td align="center">dbname</td>
						<td><i>The database name. The default value is jforum. All JForum tables are preceded by "jforum_", so you don't need to worry about conflicting table names.</i></td>

					</tr>
			</tbody></table></td>
		</tr>
	</tbody></table>

<p>The other properties you may leave with the default values if you don't know what to put.</p>

		<!-- Note for MySQL users -->
		<div class="blue-title"><strong>Note for MySQL users</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<p>If you're going to use MySQL 4.1 or newer, please pay attention to the fact that starting from this version (the mysql version, not JForum) many architectural changes were made. By default, now the system runs using the UTF-8 character set (previous versions lack support for it), and it may result in some problems depending the way you configured JForum to connect to MySQL. Regular installations will opt to use unicode and UTF-8 as character encoding, but, when using MySQL 4.1+, you shoudl avoid id. To do that, open the file mysql.properties and change the value of the keys "mysql.encoding" and "mysql.unicode" to empty (eg, mysql.unicode= ).</p>

		<!-- Creating the database tables -->
		<div class="blue-title"><strong>Creating the database tables</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<p>The next step is to create the tables. To do that, use the import script named "&lt;DBNAME&gt;_db_struct.sql", placed at WEB-INF/config/database/&lt;DBNAME&gt;. This script will create all necessary tables to run JForum. The script were tested and should work with no problem at all.
Also, please keep in mind that if you are upgrading JForum you need to take a look to see if a migration script exists. Look in the file named "Readme.txt" in the root directory to see.</p>

		<!-- Populating the tables -->
		<div class="blue-title"><strong>Populating the tables</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<p>Now it is time to run the script to populate the database tables. To do that, use the script named "&lt;DBNAME&gt;_data_dump.sql", also located at WEB-INF/config/database/&lt;DBNAME&gt;. One more time, you should have no problems with this step. If you do, please remember to inform the error message, as well the database name and version you're using.</p>

		<!-- General configuration -->
		<div class="blue-title"><strong>General configuration</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<p>The main configuration file for JForum is <i>WEB-INF/config/SystemGlobals.properties</i>. The file is well documented, and you certainly will want to change some of the settings there, like forum's URL, name, description, location of some directories and etc.</p>

		<!-- Security informations and considerations -->
		<div class="blue-title"><strong>Security informations and considerations</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<ul class="ul-orange">
			<li>Remove the line "install = net.jforum.view.install.InstallAction" from the file WEB-INF/config/modulesMapping.properties</li>
			<li>JForum uses a servlet mapping to invoke the pages. This mapping is *.page, and is already properly configured at WEB-INF/web.xml. If you are running JForum on a ISPs which have Apache HTTPD in front of Tomcat, you may need to contact their Technical Support and ask them to explicity enable the mapping for you.
</li>
			<li>The directory "images", "tmp", "upload" and "WEB-INF" ( and their sub-directories ) should have write permission to the user who runs the web server. You'll get nasty exceptions if there is no write permission. In the same way, if you're going to use the file attachments support, the directoy you'd chosen to store the files ("uploads" by default) should also be writable.</li>
			<li>The administration interface is accessible via the link Admin Control Panel, located in the bottom of the main page. You will only see this link if you are logged as Administrator. See above the default password for the admin user: the username is Admin and the password is admin</li>
			<li>This step is <strong>HIGHLY</strong> recommended: Open the file WEB-INF/config/SystemGlobals.properties and search for a key named user.hash.sequence. There is already a default value to the key, but is <strong>VERY RECOMMENDED</strong> that you change the value. It may be anything, and you won't need to remember the value. You can just change one or other char, insert some more... just type there some numbers and random characters, and then save the file. This value will be used to enhance the security of your JForum installation, and you will just need to do this step once.</li>
		</ul>
        </div><!-- size 1-->
    </div><!-- cnt cnt -->
</div><!-- content wrapper -->
<%@include file="footer.jsp"%>
