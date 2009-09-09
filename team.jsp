<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>

<div id="content_wrapper">    
	<c:set var="currentPage" value="team"/>
	<%@include file="menu.jsp"%>
	
    <div id="cnt_cnt">
		<%@include file="jforum_box.jsp"%>

	<div class="size1 fl text1">
        	<h2>JForum team</h2>
           	
		<table summary="">
			<caption></caption>
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Contact</th>
					<th scope="col">Role</th>
					<th scope="col">Bio</th>
				</tr>
			</thead>	
			<tfoot>
				<tr></tr>
			</tfoot>
			<tbody>
				<tr>
					<th scope="row">Rafael Steil</th>
					<td>...</td>
					<td>Lead</td>
					<td>...</td>
				</tr>
				<tr class="odd">
					<th scope="row">Diego Plentz</th>
					<td>...</td>
					<td>Developer</td>
					<td>...</td>
				</tr>
		</tbody>		
		</table>
        </div><!-- size 1-->
    </div><!-- cnt cnt -->
</div><!-- content wrapper -->
<%@include file="footer.jsp"%>
