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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<%@ include file="header.jsp" %>
	</div>
	
	<div id="banner"><img src="images/banner.jpg" width="1000" height="361" alt="" /></div>
	<div id="welcome">
		<h2 class="title"><a href="#">Welcome to Compare World</a></h2>
		<div class="entry">
			This is <strong>Compare World </strong>, a free, fully standards site aims to provide information of your Products designed by <a href="http://www.growyourbusiness.in">Chirag Singla</a>.  you can view and post free classified .  we provide scarce information about your Product.CompareWorld aims not only providing product comparision but also customer satisfaction.... </div></div>
	
	</div>
	
	
	
	<div id="page">
		<%@ page import="java.sql.*" %>
<%
String category=request.getParameter("category");
String city=request.getParameter("city");
try{
Class.forName("org.h2.Driver");
Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/Comapre","system","oracle");

	String query="select * from city1_details where category=?";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,category);
	ResultSet rs1=ps.executeQuery();	

	 String query1="select * from city1_details where city=?";
	PreparedStatement rss=con.prepareStatement(query1);
	rss.setString(1,city);
	ResultSet rss1=rss.executeQuery(); 

	out.print("<input class='form-control' id='myInput' type='text' placeholder='Search..'>");
	out.print("<table class='table table-bordered table-striped' style='background-color:33ccff';table-layout:fixed' border='1' cellpadding='1' width='100%' cellspacing='1'>");
	out.print("<tr><th>Name</th><th>Category</th><th>Email</th><th>Address</th><th>Contact</th><th>city</th>");

	while(rs1.next()){
	out.print("<tbody id='myTable'><tr><td>"+rs1.getString(2)+"</td><td>"+rs1.getString(3)+"</td><td> "+rs1.getString(4)+"</td><td> "+rs1.getString(5)+"</td><td> "+rs1.getString(7)+" </td><td>"+rs1.getString(6)+" </td></tr></tbody>");
	}
	

	 while(rss1.next()){
	out.print("<tbody id='myTable'><tr><td>"+rss1.getString(2)+"</td><td>"+rss1.getString(3)+"</td><td> "+rss1.getString(4)+"</td><td> "+rss1.getString(5)+"</td><td> "+rss1.getString(7)+" </td><td>"+rss1.getString(6)+" </td></tr></tbody>");
	}
 
	out.print("</table>");
	}catch(Exception e){e.printStackTrace();}
	%>
		
	<script>
	$(document).ready(function(){
  	$("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  	});
	});
	</script>
		
		</div>
		<!-- end #content -->
		
		<div id="three-columns">
		<div id="column1">
		<h2>Top Categories</h2> 
			<p><jsp:include page="left.html"></jsp:include></p>
		</div>
		<div id="column2">


	</div>
		<div id="column3">
			<h2>Top City</h2> 
			<p><jsp:include page="right.html"></jsp:include></p>
		</div>
	</div>
		<div id="sidebar">
		
		</div>
	
	<!-- end #page --> 

<div id="footer">
	<p>Copyright (c) 2018 commpareworld.com. All rights reserved. Design by <a href="http://www.growyourbusiness.in">Compare World</a>.</p>
</div>
<!-- end #footer --></body></html>


















