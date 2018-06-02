	<%@ page import="java.sql.*" %>
<%
String n=request.getParameter("val");

try{
Class.forName("org.h2.Driver");
Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/Comapre","system","oracle");

PreparedStatement ps=con.prepareStatement("select * from city1_user where name=?");
ps.setString(1,n);
ResultSet rs=ps.executeQuery();
boolean status=rs.next();

if(status)
out.println("Invalid user! userName already exists");
else
out.println("Valid user");

con.close();
}catch(Exception e){e.printStackTrace();}

%>