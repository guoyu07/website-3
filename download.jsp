<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>

<div id="content_wrapper">
	<c:set var="currentPage" value="download"/>
	<%@include file="menu.jsp"%>
    
    <div id="cnt_cnt">
		<%@include file="jforum_box.jsp"%>
        
        <div class="size2 fr text1" id="bg-gray">
        	<h2>Installation &amp; configuration</h2>
			<p>Please read the<a href="install.jsp"> installation instructions</a> before you start, so you dont't run into any problems. </p>
			
			<p><strong>Upgrading</strong></p>
			<p>To upgrade from previous versions of jforum is very easy and painless. We always work hard to make the process the easiest possible. </p>
			<p>If you are going to upgrade your jforum installation, <a href="upgrade.jsp">check out the instructions here</a>. </p>
			
			<p><strong>Bugs</strong></p>
			<p>If you ran into a problem, <a href="http://github.com/jforum/jforum3/issues">check out the bug reporting tool</a>. 
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
			
			<p>&nbsp;</p>
			<p><strong>Files for version <em>2.1.8 (stable)</em></strong></p>
			<p><a href="download_file.jsp?type=zipStable">Download jforum ZIP package </a></p>
			<p><a href="download_file.jsp?type=warStable">Download jforum WAR package </a></p>
			<p><a href="download_file.jsp?type=srcStable">Download jforum source code </a></p>
			
			<p>&nbsp;</p>
			<p><strong>Files for version <em>3.0 (beta)</em></strong></p>
			<p><a href="download_file.jsp?type=zipBeta">Download jforum ZIP package </a></p>
			<p><a href="download_file.jsp?type=srcBeta">Download jforum source code </a></p>
			<p>To get the latest source code version, please check out <a href="http://github.com/jforum/jforum3">http://github.com/jforum/jforum3</a></p>
        </div><!-- size 1-->
    </div><!-- cnt cnt -->
</div><!-- content wrapper -->

<%@include file="footer.jsp"%>
