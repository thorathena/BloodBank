<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%
if(session.getAttribute("username")!=null||session.getAttribute("staff_username")!=null){
session.invalidate(); 
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
        
        <title>Login</title>
       
    <style>
   body{
   background-size:cover;																				
   background:url("img/image12.jpg");
   background-repeat: no-repeat; 
   }
   
   
        
 </style>
  
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="style.css">
  <%@ include file = "header.jsp" %> 
 </head>
  <body>
<br><br><br><br>
<div class="container-fluid">
    <div class="myform" style="width: 50%; max-height: 300px; margin: auto;">
        <h3 class="full-width">
        <div class="wrap" style="text-align: center;">Login </div>
        </h3><br><br>
                
                <form method="post" action="Login">
                    <div class="textip">
                      
                      <input type="text" name="username" placeholder="username"><br>
                      <input type="password" name="password" placeholder="password"><br>
                      
                      <button type="submit" class="btn1" >Login</button>
                      <a href="register.jsp"><button type="button" class="btn2" >Register</button></a>
                    
                    </div>
                </form>
        </div>
    </div>
    <%@ include file = "footer.jsp" %>    
  </body>
</html>

