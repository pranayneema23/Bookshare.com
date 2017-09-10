



<!doctype html>
<html lang="en-US">
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html">
  <title>My Profile</title>
  <meta name="author" content="Pranay Neema">
 <!--<link rel="shortcut icon" href="http://designshack.net/favicon.ico">-->
  <link rel="icon" href="images/Bookshare1.png" type="image/png" sizes="120x120">
  <link rel="stylesheet" type="text/css" media="all" href="css/Profilepage.css">
  <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
</head>

<body>
  <div id="topbar">
  <a href="home.jsp">Welcome to BookShare.com</a>
  </div>
  
  <div id="w">
    <div id="content" class="clearfix">
      <div id="userphoto"><img src="images/avatar.png" alt="default avatar"></div>
      <h1>User Profile</h1>
      
      <nav id="profiletabs">
        <ul class="clearfix">
          <li><a href="#bio" class="sel">Bio</a></li>
          <li><a href="#activity">Uploaded Book</a></li>
          <li><a href="#friends">Friends</a></li>
          <li><a href="#settings">Settings</a></li>
          <li></li> 
        </ul>
      </nav>
      
      <section id="bio">
          <form action="LogoutServlet" name="logoutForm" method="post">  
        <p>I am <a href=""><%=session.getAttribute("currentSessionUser") %></a>.</p>
        
        <p>You can request any book to my email.</p>
        <a href="LogoutServlet"><input type="button" name="login" value="" />Log Out</a> 
        <p></p>
          </form>
      </section>
      
      <section id="activity" class="hidden">
        <p>Most recent actions:</p>
        
        <p class="activity">@10:15PM - Upload Ada Book</p>
        
        <p class="activity">@9:50PM - Upload CN Book</p>
        
        <p class="activity">@8:15PM - Buy ACA Book</p>
        
        <p class="activity">@4:30PM - Added <strong>Laksh Jain</strong> as a friend</p>
        
        <p class="activity">@12:30PM - Sell PPL Book</p>
      </section>
      
      <section id="friends" class="hidden">
        <p>Friends list:</p>
        
        <ul id="friendslist" class="clearfix">
          <li><a href="#"><img src="images/avatar.png" width="22" height="22"> Laksh Jain</a></li>
          <li><a href="#"><img src="images/avatar.png" width="22" height="22"> Kuldeep Singh</a></li>
          <li><a href="#"><img src="images/avatar.png" width="22" height="22"> Nayan</a></li>
        </ul>
      </section>
      
      <section id="settings" class="hidden">
        <p>Edit your user settings:</p>
        
        <p class="setting"><span>E-mail Address <img src="images/edit.png" alt="*Edit*"></span>vvd</p>
        
        <p class="setting"><span>Username <img src="images/edit.png" alt="*Edit*"></span> xyz</p>
        
        <p class="setting"><span>Mobile No.<img src="images/edit.png" alt="*Edit*"></span> +91</p>
        
        <p class="setting"><span>Address <img src="images/edit.png" alt="*Edit*"></span> abc</p>
        
        <p class="setting"><span>Connected Accounts <img src="images/edit.png" alt="*Edit*"></span> None</p>
      </form>
      </section>
    </div><!-- @end #content -->
  </div><!-- @end #w -->
<script type="text/javascript">
$(function(){
  $('#profiletabs ul li a').on('click', function(e){
    e.preventDefault();
    var newcontent = $(this).attr('href');
    
    $('#profiletabs ul li a').removeClass('sel');
    $(this).addClass('sel');
    
    $('#content section').each(function(){
      if(!$(this).hasClass('hidden')) { $(this).addClass('hidden'); }
    });
    
    $(newcontent).removeClass('hidden');
  });
});
</script>
</body>
</html>