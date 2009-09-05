<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>

<div id="content_wrapper">    
	<c:set var="currentPage" value="upgrade"/>
	<%@include file="menu.jsp"%>
	
    <div id="cnt_cnt">
		<%@include file="jforum_box.jsp"%>

	<div class="size1 fl text1">
        	<h2>Upgrading your JForum installation</h2>
           	<p>Upgrading from an older version of JForum to the newest release is very straightforward, requiring only a bit of attention and the reading of the proper documentation.</p>

		<ul class="ul-orange">
			<li>To upgrade from version 2.1.7 to 2.1.8, check <a href="upgrading217to218.jsp">Upgrading from 2.1.7 to 2.1.8</a></li>
		</ul>

        </div><!-- size 1-->
        
    </div><!-- cnt cnt -->
</div><!-- content wrapper -->

<%@include file="footer.jsp"%>
