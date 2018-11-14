<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

<%
Class.forName("org.gjt.mm.mysql.Driver").newInstance();

Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blood_bank","root","");
%>

<!DOCTYPE html>
<html lang="en">
  
<head>
	<style>
		 body
		 {
			 background-size:cover;
			 background:url("img/blooddonation.jpg");
			 background-repeat: no-repeat; 
		 }
		 
		 header, .full-width 
		 {
			 width: 100%;
     	     background: #FF6347;
		 }
		 .wrap 
		 {
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
		 {	 background:tred.jpg;
			 border: 1px solid gray;
			 margin-left:200px;
			 margin-right:800px;
			 margin-top:100px;
	     }
			 
			 
		 .dropdown-menu a:hover 
		 {
			 background-color: #f1f1f1
		 }
		 .dropdown:hover 
		 .dropdown-menu 
		 {
			 display: block;
		 }
<!--				 }     -->

		 vor1.groove 
		 {
			 border-style: groove;
		 }
		 .x 
		 {
			 border-bottom-style:groove;
		 }
		 body 
		 {
			 position: relative;
		 }
		 .affix 
		 {
			 top:0;
			 width: 100%;
			 z-index: 9999 !important;
		 }
		 .navbar
		 {
			 margin-bottom: 0px;
		 }
		 .affix ~ .container-fluid 
		 {
			 position: relative;
			 top: 50px;
		 }
				
	     a.submenu 
		 {
			 color: black;
			 background-color:transparent;
		 }
		 a.submenu:hover
		 {
			 color: red;
			 background-color:transparent;
		 }				 
		 .search-blood-donors 
		 {
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
</head>

<%
if(session.getAttribute("username")!=null){
%>	
<%@ include file = "header.jsp" %> 

<body>	
	<div class="myform">
		<h3 class="full-width">
			<div class="wrap" style="text-align:center;">
				<strong>Search Blood Donors</strong>
			</div>
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
			</div><br>
			<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-4">
					<input class="btn btn-success btn-block" type="submit" value="Search">
				</div>
			</div>
			<br><br>
		</form>

		<form class="well form-horizontal" action = "user_req.jsp" method="post"  id="contact_form">
		<!-- Form Name -->
			<h3 style="text-align:center;">
				<strong>Request Blood</strong>
			</h3>
			<br><br>
		<!-- Select Basic -->

			<div class="form-group" > 
				<label class="col-md-4 control-label">Blood Group</label>
				<div class="col-md-6">
					
						<select name="bloodgroup1" class="form-control selectpicker"  >
							  <option value="#" >Select Blood Group</option>
							  <option>O+</option>
							  <option>O-</option>
							  <option >A+</option>
							  <option >A-</option>
							  <option >B+</option>
							  <option >B-</option>
							  <option >AB+</option>
							  <option >AB-</option>
						</select>
					
				</div>
			</div>
					
			<div class="form-group" >		
					<!--  <div class="textip" style = "padding-left: 10%;"> -->
					<label class="col-md-4 control-label">
						Receipt 
					</label>
					<div class = "col-md-6">									
						   <input type="text" name="receipt" size="34" id="receipt" maxlength="15"  class="form-control " />	
					</div>
			</div>	
			
			<div class="form-group" >		
					<label class="col-xs-4 control-label">
						Consulting doctor 
					</label>
					<div class = "col-xs-6">
							<input type="text" name="doc" id="doc"   class="form-control" />
					</div>	  
			</div>
			
			<div class="form-group"  >					
					<label class="col-md-4 control-label">
						Hospital Address 
					</label>
					<div class = "col-xs-6">
						<p style="float:center; width: auto; margin:10; padding:-10; font-size:12px;"> 
						</p>
						<textarea name="h_address" id="h_address"  rows="3" cols="40" class="form-control"></textarea>
					</div>	
			</div>	 
			


			<br/>
			<br/>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label"></label>
				<div class="col-md-6">
					<button type="submit" class="btn btn-block btn-warning" >
						Send <span class="glyphicon glyphicon-send"></span>
					</button>
				</div>
			</div>
			<br>
			<br>


		</form>
	</div>

	<br>
	<br>
	
  
	
</body>

<%
}
else
{
response.sendRedirect("index.jsp");
}
%>
  
</html>

