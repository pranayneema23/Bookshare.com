<%-- 
    Document   : fileupload
    Created on : May 21, 2017, 7:27:20 PM
    Author     : ADMIN
--%>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>File Upload Form</title>
  <link rel="stylesheet" href="css/Signup.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>

<body>
  <div class="container">
    <section class="register">
      <h1>Upload Book @ BookShare.com</h1>
      <form method="post" action="fileUploadDb.jsp">
      <div class="reg_section personal_info">
      <h3>Book Information</h3>
      <input type="text" name="UserName" value="" placeholder="User Name">
      <input type="text" name="Name" value="" placeholder="Book Name">
      <input type="text" name="Author" value="" placeholder="author name">
      <input  type="text" name="edition" value="" placeholder="enter book edition number">
      <input type="text" name="ISBN no." value="" placeholder="ISBN No. (optional)">
      <input type="text" name="Book Age" value="" placeholder="enter how old is the book">
      <input type="checkbox" name="rent" id="rent">
      <input type="text" name="duration" value="" placeholder="rent duration limit">
      <input type="checkbox" name="sell" id="sell">
      <input type="text" name="sell price" value="" placeholder="enter selling price">
      </div>
      <div class="reg_section password"> 
      <h3>Upload Photos Of Book</h3>
      <input type="file" name="image1" value="" placeholder="upload book image" >
      <input type="file" name="image2" value="" placeholder="upload book image" >
      <input type="file" name="image3" value="" placeholder="upload book image" >
      <input type="file" name="image4" value="" placeholder="upload book image" >
      
      </div>
      <div class="reg_section password">
      <h3>Your Address</h3>
      <!--<input name="Address"> -->
      <select name="Address">
        <option value="">Indore</option>
        <option value="">Bhopal</option>
        <option value="">Khargon</option>
        <option value="">Khandwa</option>
      </select>
      <textarea name="textarea" id="">Your Full Address</textarea>
      </div>
      <p class="terms">
        <label>
          <input type="checkbox" name="remember_me" id="remember_me">
           I accept Terms & Condition
        </label>
      </p>
      <p class="submit"><input type="submit" name="commit" value="Upload Book"></p>
      </form>
    </section>
  </div>

  

</body>
</html>