<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>

<% 
    String id=request.getParameter("UserId");//HttpServeletRequeste
    String pwd=request.getParameter("pwd");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
PreparedStatement st=con.prepareStatement("select username,pass from booksharesignup where username=? and pass=?");
st.setString(1,id);
st.setString(2,pwd);
ResultSet rs=st.executeQuery();

if(rs.next())
{
    Cookie ck=new Cookie("MVSProject",id);
    ck.setMaxAge(1000000);
    response.addCookie(ck);
   
//    session.getAttribute("MSG",id);
    response.sendRedirect("ProfilePage.jsp");//HttpServletResponse
}
else
{
    response.sendRedirect("home.html");
    
}


%>