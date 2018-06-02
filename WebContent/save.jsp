
<%@ page import="java.sql.*" %>

<%
	String name = request.getParameter("username");
	String category = request.getParameter("category");
	String email = request.getParameter("usermail");
	
	String contact = request.getParameter("contact");
	String address = request.getParameter("address");
	String city = request.getParameter("city");
	

	try {
		Class.forName("org.h2.Driver");
		Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/Comapre", "system","oracle");

		String query = "insert into city1_details(name,category,email,address,city,contact) values(?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, name);
		ps.setString(2, category);
		ps.setString(3, email);
		
		ps.setString(4, address);
		ps.setString(5, city);
		ps.setString(6, contact);
		

		int status = ps.executeUpdate();
		if (status > 0) {%>
		<%@ include file="adminsuccess.jsp"%> 
			<%
		} 
	} catch (Exception e) {
		e.printStackTrace();
	}
%>	