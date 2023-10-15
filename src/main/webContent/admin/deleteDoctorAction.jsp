<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st1=con.createStatement();
	st1.executeUpdate("delete from product where id='"+id+"'");
	response.sendRedirect("allDoctorEditDoctor.jsp?msg=removed");
	
}
catch(Exception e)
{
	System.out.println(e);
}
%>