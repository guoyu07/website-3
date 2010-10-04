<?include("header.jsp")?>

<div id="content_wrapper">    
	<?
	$currentPage = "home";
	include("menu.jsp")
	?>
	
    <div id="cnt_cnt">
		<?include ("jforum_box.jsp")?>
        
        <div class="size4 fr text1">
        	<img src="imgs/taketour.png" />
        </div><!-- box size2-->
        	
        <div class="size5 fl">
        	
            <div id="bluesash">
                <h2>jforum is a powerful and robust discussion board system implemented in Java</h2>
                <p> It provides an attractive interface, an efficient forum engine, an easy to use administrative panel, an advanced permission control system and much more.</p>
                <p class="txt3"><a href="features.jsp">Click here</a> for more features and information on <b>jforum</b></p>
                <a id="bluebtn" href="download.jsp">
                	<span class="txt1">Download jforum now!</span>
                    <span class="txt2">100% free</span>
                </a><!-- get copy -->
                
            </div><!-- bluesash-->
            
        </div><!-- size 1-->
    </div><!-- cnt cnt -->
</div><!-- content wrapper -->

<?include("footer.jsp")?>
