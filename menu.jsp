<?
global $currentPage;
?>
<div id="header_wrapper">
    <div id="header_cnt">
        <ul class="menu">
			<li><a id="btn_home_menu" <? if ($currentPage == "home") { echo "class='current_page'"; } ?> href="index.jsp">Home</a></li>
			<li><a id="btn_download_menu" <? if ($currentPage == "download") { echo "class='current_page'"; } ?> href="download.jsp">Download</a></li>
            <li><a id="btn_features_menu"  <? if ($currentPage == "features") { echo "class='current_page'"; } ?> href="features.jsp">Features</a></li>
			<li><a id="btn_production_menu" <? if ($currentPage == "production") { echo "class='current_page'"; } ?> href="production.jsp">In Production</a></li>            <li><a id="btn_team_menu" <? if ($currentPage == "team") { echo "class='current_page'"; } ?> href="team.jsp">Team</a></li>                        
			<li><a id="btn_contactus_menu" <? if ($currentPage == "contact") { echo "class='current_page'"; } ?> href="contact.jsp">Contact Us</a></li>            
        </ul><!-- menu-->
    </div><!-- cnt header-->
</div><!-- header wrapper -->
