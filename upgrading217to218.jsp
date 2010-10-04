<?include("header.jsp")?>

<div id="content_wrapper">    
	<?
	$currentPage = "upgrading217to218";
	include("menu.jsp")
	?>
    <div id="cnt_cnt">
		<?include ("jforum_box.jsp")?>

	<div class="size1 fl text1">
        	<h2>Upgrading from version 2.1.7 to 2.1.8</h2>
           	<p>Upgrading from JForum version 2.1.7 to version 2.1.8 is easy. All you have to do is to carefully follow the steps here described.</p>

<p>The suggested approach is to unpack JForum 2.1.8 into some temporary directory, make the steps here shown, and then, when all is finished and tested, copy it over the directory where the previous version is located. This is a suggestion, and you're free to proceed the way you prefer.</p>

		<!-- What's new -->
		<div class="blue-title"><strong>What's new</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<p>For a list of changes made in JForum 2.1.8, please check <a href="">New and Changed Features in JForum 2.1.8</a>.</p>

		<!-- Backup your data -->
		<div class="blue-title"><strong>Backup your data</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		 <p>First, make a backup of the database and the current directory where JForum is installed. JForum's directories are: templates, images, upload and WEB-INF/config. Each database has a different backup tool, so please check its documentation or with your system administrator. For HSQLDB backup, the database files are in the directory WEB-INF/config/database/hsqldb, and all you have to do is to copy it.</p>

<p><strong>Configuration files</strong></p>
<p>You'd like to take special care for SystemGlobals.properties and jforum-custom.conf, as these are the main configuration files. Backup them and then compare and merge your current version with the new version that comes with JForum 2.1.8. The same is valid for database-specific configurations, that are stored in the directory WEB-INF/config/database.</p>

		<!-- Upgrading the database schema -->
		<div class="blue-title"><strong>Upgrading the database schema</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
<p>There are some changes to the database schema - a new column here, a removed column there... In order to get the new database right, go to the directory <strong>upgrade/2.1.8</strong>, where you'll find the upgrade script for all supported databases - Oracle, MySQL, PostgreSQL and HSLQDB.</p>

<p>Using your database management console / <a href="http://www.aquafold.com/">tool</a>, import the appropriate script. Below is a list of commands for each database - another possible approach is to simple use the management console and paste the script there. It is up to you.</p>
<p><strong>MySQL</strong></p>
mysql -u USERNAME -p DBNAME < mysql_2.1.7_to_2.1.8.sql
<p><strong>PostgreSQL</strong></p>
Log in to postgres and type

<p>\i /path/to/postgresql_2.1.7_to_2.1.8.sql</p>

<p>Or, directly from the command line, use the psql tool, as in</p>

<p>psql -f /path/to/postgresql_2.1.7_to_2.1.8.sql</p>
<p><strong>Oracle</strong></p>
sqlplus @oracle_2.1.7_to_2.1.8.sql
<p><strong>HSQLDB</strong></p>
<p>The process for HSQLDB is trickier. First, from the command line, go to the directory WEB-INF/config/database/hsqldb, which is where the database is located. Then, run the following command (you must have Java installed):</p>

<p>java -Djava.ext.dirs=../../../lib org.hsqldb.util.DatabaseManagerSwing</p>

<p>This will open a dialog window asking you for connection settings. In "Type" choose "HSQL Database Engine Standalone", and, for "URL", put the value jdbc:hsqldb:jforum. Leave "User" and "Password" with the default values, and click "OK". A new window will show up, listing all tables in the left column.</p>

<p>Now simply paste the contents of file hsqldb_2.1.7_to_2.1.8.sql into the text area at the right, and click "Execute".</p>

		<!-- Check the configuration files -->
		<div class="blue-title"><strong>Check the configuration files</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
	
<p><strong>SystemGlobals.properties / jforum-custom.conf</strong></p>
<p>Open the file WEB-INF/config/SystemGlobals.properties and check every property, setting it up according to your needs. Please note that JForum stores customized configurations (those saved from the Admin Panel -> Configurations page) into a file named jforum-custom.conf, which your current installation of JForum may or may not have. If you have it, please make sure to update any necessary value there as well.</p>
<p><strong>modulesMapping.properties</strong></p>
<p>Open the file WEB-INF/config/modulesMapping.properties and remove the following line, if it exists: install = net.jforum.view.install.InstallAction</p>

		<!-- Update web.xml -->
		<div class="blue-title"><strong>Update web.xml</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
<p>Starting from version 2.1.8, JForum no longer uses the library DWR for its AJAX calls - now <a href="http://jquery.com/">JQuery</a> is used -, and so it is necessary to remove all references to the DWR servlet from the file web.xml (this, of course, if you don't use DWR in other parts of your own system).</p>

<p>Open the file WEB-INF/web.xml, and then search and remove the following declarations:</p>

<table class="highlightMacro" cellpadding="1" width="85%"><tbody><tr><td><p></p><p>
</p><p>&lt;!-- AJAX --&gt;<br>
&lt;servlet&gt;<br>
	&lt;servlet-name&gt;dwr-invoker&lt;/servlet-name&gt;<br>
	&lt;servlet-class&gt;uk.ltd.getahead.dwr.DWRServlet&lt;/servlet-class&gt;<br>

<br>
	&lt;init-param&gt;<br>
		&lt;param-name&gt;configJForum&lt;/param-name&gt;<br>
		&lt;param-value&gt;WEB-INF/dwr-jforum.xml&lt;/param-value&gt;<br>
	&lt;/init-param&gt;<br>

<br>
	&lt;init-param&gt;<br>
		&lt;param-name&gt;debug&lt;/param-name&gt;<br>
		&lt;param-value&gt;false&lt;/param-value&gt;<br>
	&lt;/init-param&gt;<br>

&lt;/servlet&gt;<br>
</p></td></tr></tbody></table>

<p>and 
</p>
<p></p><table class="highlightMacro" cellpadding="1" width="85%"><tbody><tr><td><p></p><p>
</p><p>&lt;servlet-mapping&gt;<br>
	&lt;servlet-name&gt;dwr-invoker&lt;/servlet-name&gt;<br>
	&lt;url-pattern&gt;/dwr/*&lt;/url-pattern&gt;<br>

&lt;/servlet-mapping&gt;<br>
</p></td></tr></tbody></table>

<p>Delete dwr-jforum.xml</p>
<p>Finally, delete the file WEB-INF/dwr-jforum.xml. That's all.</p>

		<!-- Testing -->
		<div class="blue-title"><strong>Testing</strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<p>Now, test JForum 2.1.8 before adding it to the production environment. The easier way is to put it under some another Context. If it starts and runs without any problems, then you can proceed to the final step, which is just a matter of replacing the old version with this new one.</p>

        </div><!-- size 1-->
		
        
    </div><!-- cnt cnt -->
</div><!-- content wrapper -->

<?include("footer.jsp")?>
