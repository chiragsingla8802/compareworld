<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Magnetic 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120825

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>City Search</title>
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery.gallerax-0.2.js"></script>
<style type="text/css">
@import "gallery.css";
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo"><br/>
			<h1><a href="#"><img src="images/cw.jpg" width="180"/>CompareWorld.com</a></h1>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
	
<%@ include file="header.jsp"  %>

	</div>
	
	<div id="banner"><img src="images/banner.jpg" width="1000" height="361" alt="" /></div>
	<div id="welcome">
	<%@ include file="coockie.jsp" %>
		<h2 class="title"><a href="#">Welcome to Compare World</a></h2>
		<div class="entry">
			This is <strong>Compare World </strong>, a free, fully standards site aims to provide information of your Products designed by <a href="http://www.growyourbusiness.in">Chirag Singla</a>.  you can view and post free classified .  we provide scarce information about your Product.CompareWorld aims not only providing product comparision but also customer satisfaction.... </div></div>
	
	</div>
	
	<div id="three-columns">
		<div id="column1">
			<p><jsp:include page="left.html"></jsp:include></p>
		</div>
		<div id="column2">

      <%
String slogin=(String)session.getAttribute("islogin");
if(islogin!=null){
Cookie ck[]=request.getCookies();
out.print("<center>you are already  logged as:"+ck[0].getValue());
out.print("</center>");
}else{%>
<%@ include file="login.html"  %>
<%} %>	
	</div>
		<div id="column3">
			<h2>Top City</h2> 
			<p><jsp:include page="right.html"></jsp:include></p>
		</div>
	</div>
	
	<div id="page">
		<div id="content">
			
			
				<div id="content">
	
					<img src ="images/foto.jpg" width="400" onclick="index.jsp" style="opacity:0.4;filter:alpha(opacity=20);"/><br/>
					<marquee>WORLDS IN YOUR HAND:CITY SEARCH</marquee>
				
			</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<jsp:include page="advertisement.jsp"></jsp:include>
		</div>
	</div>
	<!-- end #page --> 
</div>
<div id="footer">
	<p>Copyright (c) 2018 commpareworld.com. All rights reserved. Design by <a href="http://www.growyourbusiness.in">Compare World</a>.</p>
</div>
<!-- end #footer -->
</body>
</html>










