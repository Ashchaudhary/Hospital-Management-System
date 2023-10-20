<%@page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%
String doctorId = request.getParameter("id");

try {
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("DELETE FROM product WHERE id = ?");
    ps.setString(1, doctorId);
    int rowsAffected = ps.executeUpdate();
    
    if (rowsAffected > 0) {
        // Doctor successfully deleted
        response.sendRedirect("allDoctorEditDoctor.jsp?msg=done");
    } else {
        // No rows affected, doctor not found
        response.sendRedirect("allDoctorEditDoctor.jsp?msg=notfound");
    }
} catch (Exception e) {
    System.out.println(e);
    response.sendRedirect("allDoctorEditDoctor.jsp?msg=wrong");
}
%>