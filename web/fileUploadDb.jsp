<%-- 
    Document   : fileUploadDb
    Created on : 22 May, 2017, 5:25:04 PM
    Author     : Pranay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>

<% 
    String username=request.getParameter("UserName");//HttpServeletRequeste
    String bookname=request.getParameter("Name");
   // String cnfmpwd=request.getParameter("confirm");
    String authorname=request.getParameter("Author");
    String edition=request.getParameter("edition");
    String isbn=request.getParameter("ISBN no.");
    String old=request.getParameter("Book Age");
    String rent = request.getParameter("rent");
    String duration=request.getParameter("duration");
    String sell = request.getParameter("sell");
    String price=request.getParameter("sell price");
    String fulladd=request.getParameter("textarea");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
PreparedStatement st=con.prepareStatement("insert into booksharebookupload value (?,?,?,?,?,?,?,?,?,?,?)");
st.setString(1,username);
st.setString(2,bookname); 
//st.setString(3,cnfmpwd); 
st.setString(3,authorname); 
st.setString(4,edition); 
st.setString(5,isbn);
st.setString(6,old);
st.setString(7,rent);
st.setString(8,duration);
st.setString(9,sell);
st.setString(10,price);
st.setString(11,fulladd); 
st.executeUpdate();

//    session.getAttribute("MSG",id);
    response.sendRedirect("LoginPage.jsp");//HttpServletResponse

%>