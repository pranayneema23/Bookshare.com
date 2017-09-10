
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <link rel="icon" href="images/Bookshare1.png" type="image/png" sizes="120x120">
  <title>Login</title>
  
  
  
      <link rel="stylesheet" href="css/loginpage.css">

  
</head>
   
<body>

<div class="container">
	<section id="content">
            
           <form action="LoginServlet" name="loginForm" method="post">  
               <%if(session.getAttribute("authenticated")!=null && session.getAttribute("authenticated").equals(true))
                               {
                                               response.sendRedirect("home.html");
                               }%>
			<h1>Login to BookShare.com</h1>
                                <!--
                                String profile_msg=(String)request.getAttribute("profile_msg");  
                                if(profile_msg!=null){  
                                out.print(profile_msg);  
                                }  
                                String login_msg=(String)request.getAttribute("login_msg");  
                                if(login_msg!=null){  
                                out.print(login_msg);  
                                }  
                                 %>  -->
			<div>
				<input type="text" placeholder="Username" required="" id="username" name="username" />
			</div>
			<div>
				<input type="password" placeholder="Password" required="" id="password" name="password"/>
			</div>
			<div>
                            <input type="submit" name="login" value="login" /> 
				<a href="#">Lost your password?</a>
				<a href="SignUp.html">Register</a>
			</div>
		</form><!-- form -->
		<!<div class="button">
			<a href="home.jsp">Copyright-2017 @BookShare.com</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
  
    <script src="js/LoginPage.js"></script>

</body>
</html>
