<?include("header.jsp")?>

<div id="content_wrapper">
	<?
	$currentPage = "download";
	include("menu.jsp")
	?>
    
    <div id="cnt_cnt">
		<?include ("jforum_box.jsp")?>
        
        <div class="size2 fr text1" id="bg-gray">
        	<h2>Installation &amp; configuration</h2>
			<p>Please read the<a href="install.jsp"> installation instructions</a> before you start, so you dont't run into any problems. </p>
			
			<p><strong>Upgrading</strong></p>
			<p>To upgrade from previous versions of jforum is very easy and painless. We always work hard to make the process the easiest possible. </p>
			<p>If you are going to upgrade your jforum installation, <a href="upgrading217to218.jsp">check out the instructions here</a>. </p>
			
			<p><strong>Bugs</strong></p>
			<p>If you ran into a problem, <a href="http://github.com/jforum/jforum2/issues">check out the bug reporting tool</a>. 
        </div><!-- box size2-->
        	
        <div class="size1 fl text1">
        	<h2>Download</h2>
           	<p>
				Don't forget to check out the <a href="install.jsp">installation instructions</a> page. 
			</p>
			
			<p><strong>License agreement</strong></p>
			<p>
				
				The current version of jforum is the result of years of work of many people, who have
				spent thousands of hours developing the software, and is licensed under the terms of the BSD Open Source license. 
			</p>
			
			<p>&nbsp;</p>
			<p>
				jform is <em>Donation Ware</em>. If you use it, please consider making a donation. Donation is made through Paypal. 
				
				<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
					<select name="amount">
						<option value="50.00">Contribute US$ 50.00</option>
						<option value="100.00">Contribute US$ 100.00</option>
						<option value="200.00">Contribute US$ 200.00</option>
						<option value="500.00">Contribute US$ 500.00</option>
					</select>
					<input type="hidden" name="cmd" value="_donations">
					<input type="hidden" name="business" value="J42U2B8TU999G">
					<input type="hidden" name="lc" value="BR">
					<input type="hidden" name="item_name" value="JForum Contribution">
					<input type="hidden" name="item_number" value="jforum_donation">
					<input type="hidden" name="currency_code" value="USD">
					<input type="hidden" name="no_note" value="1">
					<input type="hidden" name="no_shipping" value="1">
					<input type="hidden" name="currency_code" value="USD">
					<input type="hidden" name="bn" value="PP-DonationsBF:btn_donate_SM.gif:NonHosted">
					<input type="image" src="https://www.paypal.com/en_US/i/btn/btn_donateCC_LG.gif" align="center"  border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
				</form>
			</p>
			
			<p>&nbsp;</p>
			<p><strong>Files for version <em>2.1.8 (stable)</em></strong></p>
			<p><a href="jforum-2.1.8.zip">Download jforum ZIP package </a></p>
			<p><a href="http://github.com/jforum/jforum2/zipball/master">Download jforum source code </a></p>
			
			<p>&nbsp;</p>
			<p><strong>Files for version <em>3.0 (beta)</em></strong></p>
			<p><a href="http://github.com/jforum/jforum3/zipball/master">Download jforum 3 source code </a></p>
			<p>To get the latest source code version, please check out <a href="http://github.com/jforum/jforum3">http://github.com/jforum/jforum3</a></p>
        </div><!-- size 1-->
    </div><!-- cnt cnt -->
</div><!-- content wrapper -->

<?include("footer.jsp")?>
