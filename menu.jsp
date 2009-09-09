<div id="header_wrapper">
    <div id="header_cnt">
        <ul class="menu">
            <li><a id="btn_home_menu" <c:if test="${currentPage == 'home'}">class="current_page"</c:if> href="index.jsp">Home</a></li>
            <li><a id="btn_download_menu" <c:if test="${currentPage == 'download'}">class="current_page"</c:if> href="download.jsp">Download</a></li>
            <li><a id="btn_features_menu" <c:if test="${currentPage == 'features'}">class="current_page"</c:if> href="features.jsp">Features</a></li>
	    <li><a id="btn_production_menu" <c:if test="${currentPage == 'production'}">class="current_page"</c:if> href="production.jsp">In Production</a></li>                        
	    <li><a id="btn_community_menu" href="community.jsp">Community</a></li>
	    <li><a id="btn_team_menu" <c:if test="${currentPage == 'team'}">class="current_page"</c:if> href="team.jsp">Team</a></li>                        
            <li><a id="btn_contactus_menu" <c:if test="${currentPage == 'contact'}">class="current_page"</c:if> href="contact.jsp">Contact Us</a></li>            
        </ul><!-- menu-->
    </div><!-- cnt header-->
</div><!-- header wrapper -->
