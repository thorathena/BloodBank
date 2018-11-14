<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

<%
	Class.forName("org.gjt.mm.mysql.Driver").newInstance();
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blood_bank","root","");
%>
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
</head>
 <%
 if(session.getAttribute("staff_username")!=null){
%>	


<%@ include file = "header.jsp" %> 

<body>
	
	<div class="myform">
	<%
	java.sql.Statement statement = con.createStatement();
    ResultSet rs = statement.executeQuery("SELECT * FROM user_request where status='request not issued' order by username ");
	%>
	
  <h3 class="full-width"><div class="wrap" style="text-align:center;"><strong>User Requests</strong></div></h3>
  
 <table class="table">
  <tr>
  <th>req_id</th>
  <th>Username</th>
  <th>blood group</th>
  <th>receipt no</th>
  <th>consulting doctor</th>
  <th>hospital address</th>
  <th>&ensp;&ensp;</th>
  </tr>
  <%
	while( rs.next() ) {
	%>
	<form action="validate.jsp" method="post">
    <tr>
		<td><%=rs.getInt("r_id") %></td>
		<td><%=rs.getString("username") %></td>
		<td><%=rs.getString("bloodgrp") %></td>
		<td><%=rs.getString("receipt") %></td>
		<td><%=rs.getString("doctor") %></td>
		<td><%=rs.getString("hosp_addr") %></td>
		<input type="hidden" name="u_id" value="<%=rs.getInt("r_id") %>">
		<td><button type="submit" name="Submit" value="grant" class="btn btn-success">grant</button>&nbsp;<button type="submit" name="Submit" value="delete" class="btn btn-primary">deny</button></td>
		
	</tr>
    </form>    
    <%
	}
%>
</table>
 
 


</div>

<br>

<div class="myform">
<h3 class="full-width"><div class="wrap" style="text-align:center;"><strong>Hospital request</strong></div></h3>
<%
	rs = statement.executeQuery("SELECT * FROM hospital_request where status='request not issued' order by h_name ");
%>
<table class="table">
  <tr>
  <th>req_id</th>
  <th>Hospital name</th>
  <th>O+</th>
  <th>O-</th>
  <th>A+</th>
  <th>A-</th>
  <th>B+</th>
  <th>B-</th>
  <th>AB+</th>
  <th>AB-</th>
  <th>&ensp;&ensp;</th>
  
  </tr>
  <%
	while( rs.next() ) {
	%>
	<form action="h_validate.jsp" method="post">

    <tr>
		<td><%=rs.getInt("req_id") %></td>
		<td><%=rs.getString("h_name") %></td>
		<td><%=rs.getInt("op") %></td>
		<td><%=rs.getInt("oneg") %></td>
		<td><%=rs.getInt("ap") %></td>
		<td><%=rs.getInt("an") %></td>
		<td><%=rs.getInt("bp") %></td>
		<td><%=rs.getInt("bn") %></td>
		<td><%=rs.getInt("abp") %></td>
		<td><%=rs.getInt("abn") %></td>
		<input type="hidden" name="h_id" value="<%=rs.getInt("req_id") %>">
		<td><button type="submit" name="Submit" value="grant" class="btn btn-success">grant</button>&nbsp;<button type="submit" name="Submit" value="delete" class="btn btn-primary">deny</button></td>
	</tr>
	
	</form>
         
    <%
	}  
%>	
</div>
</div>

</div>

  <%@ include file = "footer.jsp" %> 
  </body>
  <%
}
else
{
response.sendRedirect("index.jsp");
}
%>  
<%		
    con.close();   
%>
</body>
</html>