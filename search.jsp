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
<%@ include file = "header.jsp" %> 
<br>
<body>
<%
	String dst = request.getParameter("district");
	String grp=request.getParameter("bloodgroup1");
	if(dst==null || dst.equals(" "))
	{
		out.print("Enter all the search fields");
	}
	else
	{
		int dist=Integer.parseInt(request.getParameter("district"));	
		int cnt =0;
		PreparedStatement pstmt=con.prepareStatement("select * from donors where d_id=? "); //sql select query
		pstmt.setInt(1,dist);
		ResultSet rs=pstmt.executeQuery();
		//if ( rs.next() ) {
			%>
			<div class="container myform col-sm-offset-4 col-sm-4 ">
			<table class="table">
  <tr>
  <th><center>List of Donors</center></th>  
  </tr>
			<%
			while(rs.next())
			{
				if(rs.getInt(grp)>0){
				%>
				<tr>
				<td><% out.print(rs.getString("name")); %></td>
				</tr>
				<%
				cnt++;
				}
			}
			%>
			</table>
			</div>
			<%
			 
	   
		if(cnt==0)
		{ 
			
			out.println(" no donors available ");
		}
		//pstmt.close();
	}
    con.close();   
%>
</body>
<%@ include file = "footer.jsp" %>
</html>