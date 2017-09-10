	<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>
        
<% Class.forName("com.mysql.jdbc.Driver");%>
        
<html >
<head>
  <meta charset="UTF-8">
  
  <title>Explore Book</title>
  <link rel="icon" href="images/Bookshare1.png" type="image/png" sizes="120x120">
    <meta name="title" content="Web site" />  
    <meta name="description" content="Your Web site description here" />  
    <meta name="keywords" content="Your Web site keywords here" />  
    <meta name="subject" content="Your Web Site subject here" />  
    <meta name="copyright" content="Your company or organization" />  
    <meta name="robots" content="All" />  
    <meta name="abstract" content="Site description here" />  
    <meta name="MSSmartTagsPreventParsing" content="true" />  
    <link id="theme" rel="stylesheet" type="text/css" href="styletable.css" title="theme" />  
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto+Condensed:300|Roboto+Condensed|Roboto+Condensed:300|Roboto+Condensed:300|Roboto+Condensed:300|Roboto+Condensed:300" type="text/css" />  
	<script type="text/javascript" language="javascript" src="js/jquery-1.8.1.min.js"></script>  
	<script type="text/javascript" language="javascript" src="js/scripts.js"></script>  
	<script type="text/javascript" language="javascript" src="js/theme.js"></script>  
	<script type="text/javascript" language="javascript" src="js/custom.js"></script>
	<script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <!--<link rel="stylesheet" href="css/styletable.css">-->

  
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
              <h1>Explore Book's</h1>
              <a href="home.jsp" ><input type="button" class="cta pie" value="Home" /> </a>   
            </div> 
          </div> 
        </div> 
      </div> 
    </header> 
  <div id="demo">

  <!-- Responsive table starts here -->
  <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
  <div class="table-responsive-vertical shadow-z-1">
  <!-- Table starts here -->
  
 <% Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
       Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from booksharebookupload") ;
 
 %>
  <table id="table" class="table table-hover table-mc-light-blue">
      <thead>
        <tr>
          <th>UserName</th>
          <th>Book Name</th>
          <th>Author Name</th>
          <th>Edition</th>
          <th>Year Old</th>
          <th>Rent Duration</th>
	<th>Price</th>
        </tr>
      </thead>
      <tbody>
          <% while(resultset.next()){ %>
        <tr>
          <td data-title="Name"><%=resultset.getString(1)%></td>
          <td data-title="BookName">
              <a href="https://github.com/zavoloklom/material-design-color-palette" target="_blank"><%=resultset.getString(2)%></a>
          </td>
          <td data-title="Authore"><%=resultset.getString(3)%></td>
          <td data-title="Edition"><%=resultset.getString(4)%></td>
          <td data-title="Old"><%=resultset.getString(6)%></td>
          <td data-title="Rent Duration"><%=resultset.getString(8)%></td>
          <td data-title="Price"><%=resultset.getString(10)%></td>




        </tr>
        <% } %>
       <!-- <tr>
          <td data-title="ID">2</td>
          <td data-title="Name">Material Design Iconic Font</td>
          <td data-title="Link">
            <a href="http://codepen.io/zavoloklom/pen/uqCsB" target="_blank">Codepen</a>
            <a href="https://github.com/zavoloklom/material-design-iconic-font" target="_blank">GitHub</a>
          </td>
          <td data-title="Status">Completed</td>
        </tr>
        <tr>
          <td data-title="ID">3</td>
          <td data-title="Name">Material Design Hierarchical Display</td>
          <td data-title="Link">
            <a href="http://codepen.io/zavoloklom/pen/eNaEBM" target="_blank">Codepen</a>
            <a href="https://github.com/zavoloklom/material-design-hierarchical-display" target="_blank">GitHub</a>
          </td>
          <td data-title="Status">Completed</td>
        </tr>
        <tr>
          <td data-title="ID">4</td>
          <td data-title="Name">Material Design Sidebar</td>
          <td data-title="Link"><a href="http://codepen.io/zavoloklom/pen/dIgco" target="_blank">Codepen</a></td>
          <td data-title="Status">Completed</td>
        </tr>
        <tr>
          <td data-title="ID">5</td>
          <td data-title="Name">Material Design Tiles</td>
          <td data-title="Link">
            <a href="http://codepen.io/zavoloklom/pen/wtApI" target="_blank">Codepen</a>
          </td>
          <td data-title="Status">Completed</td>
        </tr>
        <tr>
          <td data-title="ID">6</td>
          <td data-title="Name">Material Design Typography</td>
          <td data-title="Link">
            <a href="http://codepen.io/zavoloklom/pen/IkaFL" target="_blank">Codepen</a>
            <a href="https://github.com/zavoloklom/material-design-typography" target="_blank">GitHub</a>
          </td>
          <td data-title="Status">Completed</td>
        </tr>
        <tr>
          <td data-title="ID">7</td>
          <td data-title="Name">Material Design Buttons</td>
          <td data-title="Link">
            <a href="http://codepen.io/zavoloklom/pen/Gubja" target="_blank">Codepen</a>
          </td>
          <td data-title="Status">In progress</td>
        </tr>
        <tr>
          <td data-title="ID">8</td>
          <td data-title="Name">Material Design Form Elements</td>
          <td data-title="Link">
            <a href="http://codepen.io/zavoloklom/pen/yaozl" target="_blank">Codepen</a>
          </td>
          <td data-title="Status">In progress</td>
        </tr>
        <tr>
          <td data-title="ID">9</td>
          <td data-title="Name">Material Design Email Template</td>
          <td data-title="Link">
            <a href="http://codepen.io/zavoloklom/pen/qEVqzx" target="_blank">Codepen</a>
          </td>
          <td data-title="Status">Completed</td>
        </tr>
        <tr>
          <td data-title="ID">10</td>
          <td data-title="Name">Material Design Animation Timing (old one)</td>
          <td data-title="Link">
            <a href="http://codepen.io/zavoloklom/pen/Jbrho" target="_blank">Codepen</a>
          </td>
          <td data-title="Status">Completed</td>
        </tr>-->
      </tbody>
    </table>
  </div>
  
  <!-- Table Constructor change table classes, you don't need it in your project -->
 
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/indextable.js"></script>

</body>
</html>
