<%@page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Classes</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>

<h3 class="alert">Doctor Added Successfully!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>
<%
int id=1;
try{
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(" select max(id) from product");
	while(rs.next()){
		id=rs.getInt(1);
		id=id+1;
	}
	
}
catch(Exception e){
	
}
%>
<form action="addNewDoctorAction.jsp" method="post">

<h3 style="color: yellow;">Doctor ID: <%out.println(id); %> </h3>

<input class="input-style" type="hidden" name="id" value="<%out.println(id);%>">

<div class="center">
 <h3>Doctor Type</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter Doctor Type" required>
 <hr>
</div>

<div class="center">
<h3>Doctor Name</h3>
  <input class="input-style" type="text" name="category" placeholder="Enter Doctor Name" required>
<hr>
</div>

<div class="center">
<h3>Charge Fee</h3>
  <input class="input-style" type="text" name="price" placeholder="Enter Fee" required>
<hr>
</div>

<div class="center">
<h3>Active</h3>
   <select class="input-style" name="active">
   <option value="Yes">Yes</option>
    <option value="No">NO</option>
   
   </select>
<hr>
</div>
<button class="button"> Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>  