<%-- 
    Document   : loginprocess
    Created on : 7 May, 2017, 5:33:10 PM
    Author     : Pranay
--%>

<%@page import="bean.LoginDao"%>  
<jsp:useBean id="obj" class="bean.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=LoginDao.validate(obj);  
if(status){  
out.println("You r successfully logged in" ); 

session.setAttribute("session","TRUE");  
%>
<jsp:include page="LoginPage.jsp"></jsp:include> 
<%
}  

else  
{  
out.print("Sorry, email or password error");  
%>  
<jsp:include page="ProfilePage.html"></jsp:include>  
<%  
}  
%>  
