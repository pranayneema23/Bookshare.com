<%-- 
    Document   : Signup
    Created on : 12 Apr, 2017, 12:48:22 AM
    Author     : Pranay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>

<% 
    String username=request.getParameter("username");//HttpServeletRequeste
    String pass=request.getParameter("password");
   // String cnfmpwd=request.getParameter("confirm");
    String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
    String address=request.getParameter("address");
    String fulladd=request.getParameter("textarea");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
PreparedStatement st=con.prepareStatement("insert into booksharesignup value (?,?,?,?,?,?)");
st.setString(1,username);
st.setString(2,pass); 
//st.setString(3,cnfmpwd); 
st.setString(3,email); 
st.setString(4,mobile); 
st.setString(5,address);
st.setString(6,fulladd); 
st.executeUpdate();

//    session.getAttribute("MSG",id);
    response.sendRedirect("LoginPage.jsp");//HttpServletResponse

%>

