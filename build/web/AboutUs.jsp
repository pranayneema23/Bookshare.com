<!DOCTYPE html>
 <%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    String username;
    if(session.getAttribute("currentSessionUser")!=null){username = (String)session.getAttribute("currentSessionUser");}
    else{username="Login";}         
%>
<html lang="en">
  <head> 
    <meta charset="utf-8" />  
    <!-- Change for better search engine indexing --> 
	<link rel="icon" href="images/Bookshare1.png" type="image/png" sizes="120x120">
    <title>BookShare.com</title>  
    <meta name="title" content="Web site" />  
    <meta name="description" content="Your Web site description here" />  
    <meta name="keywords" content="Your Web site keywords here" />  
    <meta name="subject" content="Your Web Site subject here" />  
    <meta name="copyright" content="Your company or organization" />  
    <meta name="robots" content="All" />  
    <meta name="abstract" content="Site description here" />  
    <meta name="MSSmartTagsPreventParsing" content="true" />  
    <link id="theme" rel="stylesheet" type="text/css" href="style.css" title="theme" />  
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto+Condensed:300|Roboto+Condensed|Roboto+Condensed:300|Roboto+Condensed:300|Roboto+Condensed:300|Roboto+Condensed:300" type="text/css" />  
	<script type="text/javascript" language="javascript" src="js/jquery-1.8.1.min.js"></script>  
	<script type="text/javascript" language="javascript" src="js/scripts.js"></script>  
	<script type="text/javascript" language="javascript" src="js/theme.js"></script>  
	<script type="text/javascript" language="javascript" src="js/custom.js"></script>  
    <!-- Add your custom script here --> 
  </head>  
  <body>    
    <header> 
      <div id="top"> 
        <div class="bg"></div>  
        <div class="row"> 
          <div id="logo"></div>  
          <nav> 
            <div id="hmenu"> 
              <ul> 
                <li> 
                  <a href="home.jsp">Home</a> 
                </li>  
                <li> 
                  <a href="Instruction.jsp">Instruction</a> 
                </li>  
                <li> 
                  <a href="#">Contact</a> 
                </li>  
                <li> 
                  <a href="AboutUs.jsp">About Us</a> 
                </li> 
				<li> 
                  <a href="SignUp.html">Sign Up</a> 
                </li> 
                
              </ul> 
            </div> 
          </nav>  
          <div class="clear"></div> 
        </div> 
      </div>  
      <div id="header-wrapper"> 
        <div class="bg"></div>  
        <div class="row"> 
          <div id="header"> 
            <div id="tagline"> 
              <h1>Be a <i>HELPING HAND</i> <b>Share Book</b> Save <b>Environment</b></h1>
                        <%
                     String abc;
                     if(session.getAttribute("currentSessionUser")!=null){abc = "ProfilePage.jsp";}
                      else{abc="LoginPage.jsp";}         
                     %>
              <a href=<%=abc %> ><input type="button" class="cta pie" value=<%=username %> /> </a>   
            </div> 
          </div> 
        </div> 
      </div> 
    </header>    
	<!--Center -->
	<div id="main"> 
		<div class="license"> 
                  <!-- TO REMOVE -->  
                  <h3>About US</h3>  
                  <p>READ THE FOLLOWING  
                    <span style="font-weight:bold">TERMS AND CONDITIONS</span>CAREFULLY*
					<br>
					</br>
                  </p> 
		</div> 
			
	</div>	
					
					
    	 
					
					
					
					
<footer id="footer"> 
      <div class="bg"></div>  
      <div class="content"> 
        <div class="group"> 
			 <div class="col span_1_of_3"> 
		  <img id="img1" src="images/Bookshare1.png" <br="" style="float:left;margin-left: px">
          </div>  
		
          <div class="col span_1_of_3"> 
             <h2>Developer</h2>  
            <div class="vmenu"> 
              <ul> 
                <li>
                  <a href="#">Pranay Neema</a>
                </li>  
                <li>
                  <a href="#">Kuldeep Singh Mefawat</a>
                </li>  
                <li>
                  <a href="#">Laksh Jain</a>
                </li> 
              </ul> 
            </div> 
          </div>  
          <div class="col span_1_of_3"> 
            <h2>About Us</h2>  
            <p>Book Sharing Portal is a platform through which user can Sell, Buy, Rent any book and which makes it our goal of making available you a large variety of books easier.<br>Be a <i>HELPING HAND</i> <b>Share Book</b> Save <b>Environment</b>.</p> 
          </div>  
          <div class="col span_1_of_3"> 
            <h2>Contact</h2>  
            <p>BookShare.com
              <br /> IT Park (5th Floor), Indore
              <br /> 
            </p> 
          </div> 
		
        </div>
			 
        <div class="clear"></div>  
        <div class="baseline"> 
          <div style="float:left;margin-top:7px"> 
            <p> 
              <!-- Update your organization copyright --> Copyright - 2017 - BookShare.com | All Rights Reserved
              <!-- This template is free. In respect with copyright, please keep this credit link visible and unmodified (except for translation purposes)  Create a custom 
             <!-- <a href="http://www.dotemplate.com">theme</a> for your website.-->
            </p> 
          </div>  
          <ul class="social-links" style="float:right"> 
            <li> 
              <a href="#" rel="nofollow" style="background-image:url('images/facebook.png')" title="Be a fan on Facebook"></a> 
            </li>  
            <li> 
              <a href="#" rel="nofollow" style="background-image:url('images/twitter.png')" title="Follow us on Twitter"></a> 
            </li>  
            <li> 
              <a href="#" style="background-image:url('images/googleplus.png')" title="Circle us on Google+"></a> 
            </li>  
            <li> 
              <a href="#" rel="nofollow" style="background-image:url('images/rss.png')" title="RSS Feed"></a> 
            </li> 
          </ul>  
          <div class="clear"></div> 
        </div> 
      </div> 
    </footer> 
  </body> 
</html>
