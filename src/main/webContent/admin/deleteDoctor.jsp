<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>

<html>
	<head>
		<link rel="stylesheet" href="../css/addNewLesson-style.css">
		<title>Delete Doctor</title>
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
			Statement st1=con.createStatement();
			ResultSet rs=st1.executeQuery("select *from product where id='"+id+"'");
			while(rs.next())
				{
				%>
				<form action="deleteDoctorAction.jsp" method="post">
					<input type="hidden" name="id" value="<% out.println(id);%>">
					
				
					
					 <hr>
					</div>
					 <button class="button">Delete </button>
				 </form>
				<%
				}
		}
		catch(Exception e){
			System.out.println(e);
		}%>
		
	</body>
	<br><br><br>
	</body>
</html>