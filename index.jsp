<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%
if(session.getAttribute("username")!=null||session.getAttribute("staff_username")!=null){
session.invalidate(); 
}
%>
          
<%
Class.forName("org.gjt.mm.mysql.Driver").newInstance();

Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blood_bank","root","");
%>
<!DOCTYPE html>
<html lang="en">
  
     <head>
	 <link rel="stylesheet" type="text/css" href="style.css">
	 <style>
	 body{
	 background-size:cover;
	 background:url("img/blooddonation.jpg");
	 background-repeat: no-repeat; 
	 }
	 
	 header, .full-width {
  width: 100%;

  background: #FF6347;
}
.wrap {
  width: 80%;
  max-width: 24em;
  margin: 0 auto;
  padding: 0.25em 0.625em;
}
	  .box
{
background-color:black;

border:1px solid black;
margin-top:200px;
margin-left:900px;
margin-right:50px;
padding-right:5px;
padding-left:60px;
padding-left:60px;
padding-bottom:2px;
}
	.down-hover
	{
		background-color:black;
	}
	 
	  .myform
	  {
	  
	  background-color:white;
	border: 1px solid gray;
	
    margin-left:200px;
	margin-right:200px;
	margin-top:100px;
	  }
	  
	   .my
	  {
	  
	  background:tred.jpg;
	border: 1px solid gray;
	
    margin-left:200px;
	margin-right:800px;
	margin-top:100px;
	  }
	 
	 
         .dropdown-menu a:hover {background-color: #f1f1f1}
         .dropdown:hover .dropdown-menu {
         display: block;
         }
         }
         vor1.groove {border-style: groove;}
         .x {border-bottom-style:groove;}}body {
         position: relative;
         }
         .affix {
         top:0;
         width: 100%;
         z-index: 9999 !important;
         }
         .navbar {
         margin-bottom: 0px;
         }
         .affix ~ .container-fluid {
         position: relative;
         top: 50px;
         }
		
		 a.submenu {
		 color: black;
		 background-color:transparent;
		 }
		 a.submenu:hover{
		 color: red;
		 background-color:transparent;
		 }
		 
.search-blood-donors {
    height: auto;
    width: 100%;
    padding: 10px 0;
    background-color: #d6351e;
}
	  </style>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script type="text/javascript">
function dist_change()
{
    var country = $(".state").val();
 
    $.ajax({
        type: "POST",
        url: "state.jsp",
        data: "state_id="+country,
        cache: false,
        success: function(response)
        {
            $(".dist").html(response);
        }
    });
}
</script>
<%@ include file = "header.jsp" %>  
<!--	 
<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
         <div class="container-fluid">
        
         <div class="collapse navbar-collapse" id="myNavbar">
         
			 
			 <div class="row">
			
			 <div class="col-sm-3"></div>
			<ul class="nav navbar-nav">
      <li class="active"><a href="index.html">Search Donors</a></li>
	  &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
      <li><a href="aboutus.html">About us</a></li>
	  &ensp;&ensp;
     
      
	
                <li><a href="hform.php">Hospital Registration</a></li>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
                <li><a href="hrequest.php">Hospital Request</a></li>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
        <li><a href="slogin.php">Staff Login</a></li>&ensp;&ensp;&ensp;&ensp;&ensp;
        <li><a href="login.php">User Login</a></li>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
    </ul>
			 <div class="col-sm-3">
			 
			 <title>Online Blood Bank</title>
			 </div>
			 </div>
         </div>
         </div>
</nav>
-->	  
	  </head>
	<body>
	
	<div class="myform">
	<h3 class="full-width">
  <div class="wrap">Search Blood Donors</div>
  </h3><br><br>
 <form method="post" action="search.jsp">
 
 <div class="row" style="padding: 20px;">

	<div class="col-sm-4">
	<%
	java.sql.Statement statement = con.createStatement();
    ResultSet rs = statement.executeQuery("SELECT s_id,state FROM states");
	%>
	 <select class="form-control selectpicker state" onchange="dist_change()" name="state1" required>
         
	                               <option value="">Select-state</option> 
								   <%
									while(rs.next())
									{
								   %>
								    <option value="<%=rs.getInt("s_id") %>"><%=rs.getString("state") %></option>
								    <%
									}
								   %>
								       
                                  

    </select>
	</div>
	
	<div class="col-sm-4">
	 
	<select class="form-control selectpicker dist" name="district" required>
	<option selected="selected" value=" ">--Select District--</option>
    
	
    </select> 
	</div>
	
	 <div class="col-sm-4">
	 
	 <select class="form-control selectpicker" name="bloodgroup1" required>
	<option value="">Blood-group</option>
      <option value="ap">A+</option>
      <option value="an">A-</option>
      <option value="bp">B+</option>
      <option value="bn">B-</option>
      <option value="abp">AB+</option>
      <option value="abn">AB-</option>
      <option value="op">O+</option>
      <option value="oneg">O-</option>
    </select> <div class="col-sm-2"></div>
	</div>
 </div><br><br>
 <div class="row">
 <div class="col-sm-4"></div>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
     <input class="btn btn-success btn-lg" type="submit" value="Search">
 </div>
        
 
  </form><br>



     
	<br><br><br>
 
    </div>
	
	</div>
	 

  <br><br><br>
<%@ include file = "footer.jsp" %>
  </body>
  
  
</html>

