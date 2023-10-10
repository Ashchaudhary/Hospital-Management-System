<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>sign up</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="signupAction.jsp" method="post">
  <input type="text" name="name" placeholder="Enter name" required>
  <input type="email" name="email" placeholder="Enter email" required>
  <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
  <select name="securityQuestion" required>
  <option value="What is your name?">What is your name?</option>
  <option value="What is your best friend name?"> What is your best friend name??</option>
  <option value="What your favorite movie?"> What your favorite movie?</option>
  <option value="What was your first car?">What was your first car? </option>
  </select>
   <input type="text" name="answer" placeholder="Enter Answer" required>
    <input type="password" name="password" placeholder="Enter password" required>
   <button type="submit" name="signup">Sign Up</button>
    
  </form>
    
  <h2><a href="login.jsp">Login</a></h2>
  </div>


  <div class='whysign'>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
	  
  %>
<h1>Successfully Registered !</h1>
<%} %>
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