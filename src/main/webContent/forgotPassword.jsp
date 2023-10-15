<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="forgotPasswordAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
  <select name="securityQuestion">
  <option value="What is your name?">What is your name?</option>
  <option value="What is your best friend name?">What is your best friend name?</option> 
  <option value="What your favorite movie?">What your favorite movie?</option>
  <option value="What was your first car?">What was your first car?</option>
   </select>
  <input type="text" name="answer" placeholder="Enter Answer" required>
  <input type="password" name="newPassword" placeholder="Enter your new password to set" required>
  <input type="submit" value="Save"> 
  </form>
     
   <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  String msg=request.getParameter("msg");
  if("done".equals(msg))
  {
  %>
   
<h1>Password Changed Successfully!</h1>
<% } %>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Hospital Management System</h2>
    <p>Doctors and nurses, they all depend,
       On this system, their trusted friend.
       Patient data secure, at their fingertips,
       Diagnoses and treatments, it equips.</p>
  </div>
</div>
</body>
</html>