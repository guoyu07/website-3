<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>

<div id="content_wrapper">
	<c:set var="currentPage" value="contact"/>
	<%@include file="menu.jsp"%>
    
    <div id="cnt_cnt">
		<%@include file="jforum_box.jsp"%>
        
        <div class="size1 fl text1">
        	<h2>Contact</h2>
           	<p>To contact the JForum Team, please send an email to <a href="mailto:contact@jforum.net" class="blue">contact@jforum.net</a>. 
			Please note that we do not provide any kind or help or support via email. Please use the <a href="/forums/list.page">forums</a> for that.</p>
        </div><!-- size 1-->
    </div><!-- cnt cnt -->
</div><!-- content wrapper -->

<%@include file="footer.jsp"%>
