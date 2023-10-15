<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
    <% String email=session.getAttribute("email").toString(); %>
   
            <center><h2>Hospital Management System</h2></center>
            <a href="addNewDoctor.jsp">Add New Doctor <i class='fas fa-plus-square'></i></a>
            <a href="allDoctorEditDoctor.jsp">All Doctors & Edit Doctors <i class='fab fa-elementor'></i></a>
             <a href="messagesReceived.jsp">Messages Received <i class='fas fa-comment-alt'></i></a>
            <a href="appointmentsReceived.jsp">Appointment Received <i class="fas fa-archive"></i></a>
           <a href="cancelAppointment.jsp">Cancel Appointment <i class="fas fa-archive"></i></a>
           <a href="deliveredAppointment.jsp">Prescription Done<i class="fas fa-archive"></i></a>
            <a href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
          </div>
           <br>
           <!--table-->