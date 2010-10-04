<?include("header.jsp")?>

<div id="content_wrapper">    
	<?
	$currentPage = "home";
	include("menu.jsp")
	?>
	
    <div id="cnt_cnt">
		<?include ("jforum_box.jsp")?>

	<div class="size1 fl text1">
        	<h2>Installation and configuration &raquo; wizard for 2.1.8</h2>
           	<p>In this section is shown how to configure and install JForum using the Web Wizard interface. It is assumed that you have some knowledge on how to install/configure a Java servlet container (or already have one up and running), and the database is properly configured.</p>

<p>For manual installation instructions, check the <a href="install_no_wizard.jsp">Installation and configuration &raquo; manual Install</a> section.</p>

<p><em>Note: These instructions are for the installation of JForum, release version 2.1.8. Some of the steps here described may not be valid for older versions, which are no longer supported. </em></p>

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
		<div class="blue-title"><strong>Configuring</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<p>Next, point your browser to the following address: <a href="http://localhost:8080/jforum/install.jsp">http://localhost:8080/jforum/install.jsp</a></p>

<p>The bold text, "jforum", is the context's name. If you changed the context name you will need to change it here too. After the page loads, you should see the screen shown by Image 1:</p>

		<p align="center">
			<img src="imgs/install_step_1.jpg"><br>
			<i>Image 1 - Welcome page</i>
		</p>

<p>Please read carefully the fields' tips, since they contain valuable information. Below is a little explanation of each field:</p>

<table summary="">
			<caption></caption>
			<thead>
				<tr>
					<th scope="col">Field name</th>
					<th scope="col">Required</th>
					<th scope="col">Description</th>
				</tr>
			</thead>	
			<tfoot>
				<tr></tr>
			</tfoot>
			<tbody>
				<tr>
					<th scope="row">Default Board Language</th>
					<td>Yes</td>
					<td>The language to display the messages in the forum. Note that, if the translation for some text is not available,
							an English text will be used</td>
				</tr>
				<tr class="odd">
					<th scope="row">Database Type</th>
					<td>Yes</td>
					<td>The database server to use. If you don't know which one to choose, select "HSQLDB" from the list</td>
				</tr>
				<tr>
					<th scope="row">Installation Type</th>
					<td>Yes</td>
					<td>Installation mode. Currently only "New Installation" is supported</td>
				</tr>
				<tr class="odd">
					<th scope="row">Connection type</th>
					<td>Yes</td>
					<td>Which method to use to connect to database. <i>Native</i> will use regular connections, while <i>DataSource</i> will try
						to connect using the specified datasource name</td>
				</tr>
				<tr>
					<th scope="row">DataSource name</th>
					<td>No</td>
					<td>If you chosen <i>DataSource</i> as Connection Type, then inform the name of the datasource</td>
				</tr>
				<tr class="odd">
					<th scope="row">Database Server Hostname</th>
					<td>Yes</td>
					<td>The host where the database is located</td>
				</tr>
				<tr>
					<th scope="row">Database Name</th>
					<td>Yes</td>
					<td>
							<p>Where the tables will be created. <b>Note that the database should already exist</b>.</p>
							<p>If you're going go use HSQLDB, no extra configuration is needed, since it is created on the fly</p>
							<p>If you are using Oracle, you probably will have to enter the SID here.</p></td>
				</tr>
				<tr class="odd">
					<th scope="row">Database username</th>
					<td>No*</td>
					<td>The user of your database instance. *This field is required for databases other than HSQLDB</td>
				</tr>
				<tr>
					<th scope="row">Database Password</th>
					<td>No</td>
					<td>The database password, if any. Please note that errors may occur when not using any password</td>
				</tr>
				<tr class="odd">
					<th scope="row">Database Encoding</th>
					<td>No</td>
					<td>The text encoding for the database. You can specify it by hand in the "Other" field</td>
				</tr>
				<tr>
					<th scope="row">Use Connection Pool</th>
					<td>Yes</td>
					<td>In case of doubt, choose <b>No</b></td>
				</tr>
				<tr class="odd">
					<th scope="row">Forum Link</th>
					<td>Yes</td>
					<td>The link to the forum context. If you are hosting it under some "real" domain and the context path is "/", 
							the "Forum Link" will be the address of your site, in most cases. </td>
				</tr>
				<tr>
					<th scope="row">Website Link</th>
					<td>Yes</td>
					<td>The link to your website.</td>
				</tr>
				<tr class="odd">
					<th scope="row">Administrator Password</th>
					<td>Yes</td>
					<td>Type the password of the administrator (<i>Admin</i> user).</td>
				</tr>
							
		</tbody>		
		</table>

<p>Now you can click the "Next Step "button. You will see the page shown in Image 2, which that contains a summary of your choices.</p>

<p align="center">
		<img src="imgs/install_step_2.jpg"><br>
		<i>Image 2 - Checking the configuration before installation begins</i>
	</p>

<p>If is everthing looks good, click on the "Begin Install" button. Note that if some warning message is shown, then there are some required steps that should be made before proceding with the installation.</p>

<p>Wait until the installation ends. If no errors occur, then you will see a page like the one shown in Image 3</p>

<p align="center">
		<img src="imgs/install_step_3.jpg"><br>
		<i>Image 3 - Installation Finished</i>
	</p>

<p><strong>Congratulations!</strong> You have finished your JForum Installation. Before accessing the forum, do the actions pointed by the arrows, click on the check button and click on the button "Click Here to Access the Forum".</p>


		<!-- Permissions & Security -->
		<div class="blue-title"><strong>Administering the forum</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<p>Now you can login as <strong>Admin</strong> / <the_password_you_set> and click in the link "Admin Control Panel", at the end of the page. There you will be able to create Categories, Forums, Groups, and Users. Don't forget to give write access to the webserver's user to the directories "images" and "tmp" (as well from its subdiretories, if any).</p>

        </div><!-- size 1-->
		
        
    </div><!-- cnt cnt -->
</div><!-- content wrapper -->

<?include("footer.jsp")?>
