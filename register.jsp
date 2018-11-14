<!DOCTYPE html>
<html>
<head>
	<title>Registration Portal</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="style.css">
  <style>
	body{
   background-size:cover;																				
   background:url("img/image12.jpg");
   background-repeat: no-repeat; 
   }
   </style>
  <%@ include file = "header.jsp" %> 
</head>
<body>
<br><br><br>
<div class="container-fluid">
    <div class="myform" style="width: 50%;  margin: auto;">
        <h3 class="full-width">
        <div class="wrap" style="text-align: center;">Register </div>
        </h3><br><br>
                
                <form method="post" action="register1.jsp">
                    <div class="textip">
                      
                      <input type="text"  name="username" placeholder="Username" required><br>
					  <input type="text"  name="email" placeholder="email" required><br>
                      <input type="password" name="password" placeholder="Password" required><br>
                      <input type="password" name="password2" placeholder="re enter Password" required><br>
					  <input type="text" name="contact" placeholder="phone no" required>
                      <button type="submit" class="btn1" style="width: 70%;" onclick="#">Register</button>
                    
                    </div>
                </form>
        </div>
    </div>
   <%@ include file = "footer.jsp" %> 
</body>
</html>