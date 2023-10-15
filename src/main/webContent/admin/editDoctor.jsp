<%@page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Doctor</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
 <h2><a class="back" href="allDoctorEditDoctor.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
<% 
String id=request.getParameter("id");
try{
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from product where id='"+id+"'");
	while(rs.next())
	{
%>

<form action="editDoctorAction.jsp" method="post">
<input class="input-style" type="text" name="id" value="<%out.println(id);%>">

<div class="center">
 <h3>Enter Doctor</h3>
 <input class="input-style" type="text" name="name" value="<%=rs.getString(2)%>" required>
<hr>
</div>

<div class="center">
<h3>Enter Category</h3>
 <input class="input-style" type="text" name="category" value="<%=rs.getString(3)%>" required>
<hr>
</div>

<div class="center">
<h3>Enter Fee</h3>
 <input class="input-style" type="text" name="price" value="<%=rs.getString(4)%>" required>
<hr>
</div>

<div class="center">
<h3>Active</h3>
<select class="input-style" name="active">
<option value="Yes">Yes</option>
<option value="NO">NO</option>
</select>
<hr>
</div>
 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%
}
}
catch(Exception e)
{
	System.out.println(e);
}%>

</body>
<br><br><br>
</body>
</html>