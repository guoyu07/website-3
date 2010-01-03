<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>

<div id="content_wrapper">    
	<c:set var="currentPage" value="production"/>
	<%@include file="menu.jsp"%>
	
    <div id="cnt_cnt">
		<%@include file="jforum_box.jsp"%>

     	<div align="left"><h2>JForum in production</h2></div>
           	
		<table summary="">
			<caption></caption>
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Site</th>
					<th scope="col">Forum</th>
					<th scope="col">Description</th>
				</tr>
			</thead>	
			<tfoot>
				<tr></tr>
			</tfoot>
			<tbody>
				<tr>
					<th scope="row">JavaRanch</th>
					<td><a href="http://www.javaranch.com">http://www.javaranch.com</a></a></td>
					<td><a href="http://www.coderanch.com/forums">http://www.coderanch.com/forums</a></td>
					<td>The biggest forum about Java in the world, with more than 180.000 users</td>
				</tr>
				<tr class="odd">
					<th scope="row">GUJ</th>
					<td><a href="http://www.guj.com.br">http://www.guj.com.br</a></td>
					<td><a href="http://www.guj.com.br/forums/list.java">http://www.guj.com.br/forums/list.java</a></td>
					<td>GUJ is a virtual user group from Brazil. We are one of the most influent and active group in the community. GUJ was stared at August 2002. Having 50000+ users, who every day discuss about Java, make articles and disseminates Java in the country, GUJ is very proud to help the Java Community grow</td>
				</tr>
				<tr>
					<th scope="row">PortalJava</th>
					<td><a href="http://www.portaljava.com">http://www.portaljava.com</a></td>
					<td><a href="http://www.portaljava.com/forum/forums/list.page">http://www.portaljava.com/forum/forums/list.page</a></td>
					<td>Portal Java is the first brazil`s web-site in genre, it was born on may 2002, currently it has more than 30.000 (THIRTY THOUSAND) registered users</td>
				</tr>
				<tr class="odd">
					<th scope="row">Spore</th>
					<td><a href="http://www.spore.com">http://www.spore.com</a></td>
					<td><a href="http://forum.spore.com/jforum/forums/list.page">http://forum.spore.com/jforum/forums/list.page</a></td>
					<td>Game - Electronic Arts</td>
				</tr>
				<tr>
					<th scope="row">Datasul</th>
					<td><a href="http://www.datasul.com/">http://www.datasul.com/</a></td>
					<td><a href="http://opensource.datasul.com.br/jforum/forums/list.page">http://opensource.datasul.com.br/jforum/forums/list.page</a></td>
					<td>Datasul is a Brazilian-capital company, established in Joinville – SC, pioneer in the development and trading of software integrated solutions for corporate management, which has been present in the market for 28 years</td>
				</tr>
				<tr class="odd">
					<th scope="row">Laborat&oacute;rio de Ensino de Ci&ecirc;ncias e Tecnologia - Escola do Futuro da USP</th>
					<td><a href="http://darwin.futuro.usp.br/">http://darwin.futuro.usp.br/</a></td>
					<td><a href="http://goodman.futuro.usp.br/jforumlect/forums/list.page">http://goodman.futuro.usp.br/jforumlect/forums/list.page</a></td>
					<td>O LECT - Laborat&oacute;rio de Ensino de Ci&ecirc;ncias & Tecnologia &eacute; um grupo que atua, desde 1994 em pesquisa na &aacute;rea de ensino de ci&ecirc;ncias e tecnologia e que procura aliar metodologias inovadoras de ensino às novas tecnologias de comunica&ccdil;&atilde;o e processamento de dados. Nossa equipe &eacute; formada por bi&oacute;logos, qu&iacute;micos, f&iacute;sicos e pedagogos</td>
				</tr>
				<tr>
					<th scope="row">IT mill </th>
					<td><a href="http://www.itmill.com">http://www.itmill.com</a></td>
					<td><a href="http://forum.itmill.com/forums/list.page">http://forum.itmill.com/forums/list.page</a></td>
					<td>Oy IT Mill Ltd is a Finnish software company specializing in the design and development of Rich Internet Applications. We offer high-quality planning, implementation and support services for our customers' software projects, as well as sub-contract software development</td>
				</tr>
				<tr class="odd">
					<th scope="row">Command and Conquer</th>
					<td><a href="http://www.commandandconquer.com">http://www.commandandconquer.com</a></td>
					<td><a href="http://forums.commandandconquer.com/jforum/forums/list.page">http://forums.commandandconquer.com/jforum/forums/list.page</a></td>
					<td>Forum about games</td>
				</tr>
				<tr>
					<th scope="row">Mentawai Framework</th>
					<td><a href="http://www.mentaframework.org/">http://www.mentaframework.org/</a></td>
					<td><a href="http://forum.mentaframework.org/forums/list.page">http://forum.mentaframework.org/forums/list.page</a></td>
					<td>Framework MVC in Java</td>
				</tr>
				<tr class="odd">
					<th scope="row">jCVS</th>
					<td><a href="http://www.jcvs.org/">http://www.jcvs.org/</a></td>
					<td><a href="http://www.jcvs.org/jcvsforum/forums/list.page">http://www.jcvs.org/jcvsforum/forums/list.page</a></td>
					<td>JCVS is a CVS client package written entirely in Java</td>
				</tr>
				<tr>
					<th scope="row">MEN&MICE</th>
					<td><a href="http://www.menandmice.com/">http://www.menandmice.com/</a></td>
					<td><a href="http://support.menandmice.com/jforum/forums/list.page">http://support.menandmice.com/jforum/forums/list.page</a></td>
					<td>Men & Mice is a Scandinavian networking solutions company, headquartered in Reykjavik, Iceland, with operations in the USA and Europe</td>
				</tr>
				<tr class="odd">
					<th scope="row">FIEC</th>
					<td><a href="http://www.sfiec.org.br/">http://www.sfiec.org.br/</a></td>
					<td><a href="http://www.sfiec.org.br/jforum/forums/list.page">http://www.sfiec.org.br/jforum/forums/list.page</a></td>
					<td>A Federa&ccdil;&atilde;o das Indústrias do Estado do Cear&aacute; , tamb&eacute;m conhecida como FIEC, &eacute; a principal entidade de representa&ccdil;&atilde;o das indústrias do estado brasileiro do Cear&aacute;</td>
				</tr>
				<tr>
					<th scope="row">ICEfaces</th>
					<td><a href="http://www.icefaces.org/">http://www.icefaces.org/</a></td>
					<td><a href="http://www.icefaces.org/JForum/forums/list.page">http://www.icefaces.org/JForum/forums/list.page</a></td>
					<td>ICEfaces is an open source Ajax framework that enables Java EE application developers to easily create and deploy server-based rich Internet application (RIA) in pure Java</td>
				</tr>
				<tr class="odd">
					<th scope="row">CMS Container Forum</th>
					<td><a href="http://www.cmscontainer.org">http://www.cmscontainer.org</a></td>
					<td><a href="http://www.cmscontainer.org/forum/forums/list.page">http://www.cmscontainer.org/forum/forums/list.page</a></td>
					<td>CMS Container is an open source Content Management System</td>
				</tr>
				<tr>
					<th scope="row">Java Black Belt </th>
					<td><a href="http://www.javablackbelt.com/">http://www.javablackbelt.com/</a></td>
					<td><a href="http://www.javablackbelt.com/forum/forums/list.page">http://www.javablackbelt.com/forum/forums/list.page</a></td>
					<td>Community about Java</td>
				</tr>
				<tr class="odd">
					<th scope="row">Simplica</th>
					<td><a href="http://www.simplica.com/">http://www.simplica.com/</a></td>
					<td><a href="http://www.simplica.com/forums/list.page">http://www.simplica.com/forums/list.page</a></td>
					<td>IT services (software)</td>
				</tr>
				<tr>
					<th scope="row">SQL POWER </th>
					<td><a href="http://www.sqlpower.ca">http://www.sqlpower.ca</a></td>
					<td><a href="http://www.sqlpower.ca/forum/forums/list.page">http://www.sqlpower.ca/forum/forums/list.page</a></td>
					<td>SQL Power is a leading Canadian consulting firm specializing in Business Intelligence, Data Warehousing, Data Migration and Performance Measurement</td>
				</tr>
				<tr>
					<th scope="row">HotJoe - Java Help Forums</th>
					<td><a href="http://forums.hotjoe.com">http://forums.hotjoe.com</a></td>
					<td><a href="http://forums.hotjoe.com/forums/list.page">http://forums.hotjoe.com/forums/list.page</a></td>
					<td>Forum about Java</td>
				</tr>
				<tr class="odd">
					<th scope="row">J2SKI</th>
					<td><a href="http://www.j2ski.com/">http://www.j2ski.com/</a></td>
					<td><a href="http://www.j2ski.com/ski-chat-forum/forums/list.page">http://www.j2ski.com/ski-chat-forum/forums/list.page</a></td>
					<td>Ski Resorts, Snow Reports & Forecasts for the Independent Skier</td>
				</tr>
		</tbody>		
		</table>
    </div><!-- cnt cnt -->
</div><!-- content wrapper -->
<%@include file="footer.jsp"%>
