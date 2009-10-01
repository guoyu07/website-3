<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>

<div id="content_wrapper">    
	<c:set var="currentPage" value="features"/>
	<%@include file="menu.jsp"%>
	
    <div id="cnt_cnt">
		<%@include file="jforum_box.jsp"%>

		<!--
	<div class="size2 fr text1" id="bg-gray">
        	<h2>Key features navigation</h2>
		    <p><img src="imgs/blueAndPointy.png" alt="arrow"/> <a href="#installation">Installation</a></p>
		    <p><img src="imgs/blueAndPointy.png" alt="arrow"/><a href="#general">General</a></p>
		    <p><img src="imgs/blueAndPointy.png" alt="arrow"/><a href="#messages">Posting Messages</a></p>
		    <p><img src="imgs/blueAndPointy.png" alt="arrow"/><a href="#moderation">Moderation</a></p>
		    <p><img src="imgs/blueAndPointy.png" alt="arrow"/><a href="#permSecurity">Permissions & Security</a></p>
		    <p><img src="imgs/blueAndPointy.png" alt="arrow"/><a href="#customExtens">Customization & Extensiblity</a></p>
		    <p><img src="imgs/blueAndPointy.png" alt="arrow"/><a href="#users">Users</a></p>
        </div>--><!-- box size2-->

	<div class="size1 fl text1">
        	<h2>Features</h2>
           	<p>
			JForum has a growing number of features, with a lot more being asked and developed each day. Here you will find a list of the
			most useful and common features currently available. Also, take a look <a href="screenshots.jsp">at some screenshots</a>.
		</p>

		<!-- Installation -->
		<div class="blue-title"><strong><a name="installation">Installation</a></strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<ul class="ul-orange">
			<li>Easy installation through graphical web interface </li>
		</ul>

		<!-- General -->
		<div class="blue-title"><strong><a name="general">General</a></strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<ul class="ul-orange">
			<li>Unlimited forums, categories, and topics</li>
			<li>Support for several popular databases, including MySQL, PostgreSQL, Oracle and HSQLDB</li>
			<li>Karma - Rate messages and users</li>
			<li>Bookmarks - save your favourite threads and share with other users</li>
			<li>Easy migration from phpBB </li>
			<li>Friendly URLs (no more long and hard-to-remember links!)</li>
			<li>Listing of currently online users</li>
			<li>Listing of the Most Recent topics from the whole forum</li>
			<li>Fast and scalable, perfect for busy sites - unlike most message board systems, JForum caches frequently accessed data to avoid excessive querying of the database</li>
		</ul>

		<!-- Posting Messages -->
		<div class="blue-title"><strong><a name="messages">Posting Messages</a></strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<ul class="ul-orange">
			<li>File Attachments, with fully customizable options</li>
			<li>HTML and BBCode support</li>
			<li>Automatic parsing of links in messages</li>
			<li>Integrated private message system</li>
			<li>Email notifications for topics on private messages</li>
			<li>Unlimited emoticons, easily administered via a configuration panel</li>
			<li>RSS syndication</li>
			<li>Sticky topics and announcements</li>
			<li>Post preview</li>
		</ul>

		<!-- Moderation -->
		<div class="blue-title"><strong><a name="moderation">Moderation</a></strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<ul class="ul-orange">
			<li>Easy to moderate</li>
			<li>Moderated Categories and Forums - Administrators may allow new messages be posted only after the approval of some moderator or administrator </li>
			<li>Topics can be locked/unlocked and moved between forums</li>
			<li>Topics can be moved between forums</li>
		</ul>

		<!-- Permissions & Security -->
		<div class="blue-title"><strong><a name="permSecurity">Permissions & Security</a></strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<ul class="ul-orange">
			<li>Read-only forums - Forums where is not possible to post new messages, just reading </li>
			<li>Reply-only forums - Forums where only reply to existing posts are allowed</li>
			<li>Robust security system</li>
			<li>Forum moderators can be granted varying levels of control</li>
			<li>Advanced HTML filter, for increased security</li>
		</ul>

		<!-- Customization & Extensiblity -->
		<div class="blue-title"><strong><a name="customExtens">Customization & Extensiblity</a></strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<ul class="ul-orange">
			<li>Easy and fast development for any other data source</li>
			<li>Familiar and attractive layout</li>
			<li>Highly customized permission control, allowing fine control over access to any forum and category, by group and by user</li>
			<li>Easy to support new bbtags via a XML configuration file</li>
			<li>Uses the simple and powerful Freemarker templating system which allows unlimited control over layout and theming</li>
			<li>Supports individual themes/templates for users</li>
			<li>Support for different languages; easy to add new languages</li>
		</ul>

		<!-- Users -->
		<div class="blue-title"><strong><a name="users">Users</a></strong></div>
		<div><img src="imgs/bg_hr.png" width="100%" height="5"></div>
		<ul class="ul-orange">
			<li>Member Listing</li>
			<li>User defined avatars</li>
			<li>User banning</li>
			<li>Unlimited users, groups, and groups per user</li>
			<li>User profile</li>
			<li>User ranks</li>
			<li>Language preferences may be set on a per user basis</li>
			<li>Remembers last read messages and tracks new posts</li>
		</ul>
        </div><!-- size 1-->
		
        
    </div><!-- cnt cnt -->
</div><!-- content wrapper -->

<%@include file="footer.jsp"%>
