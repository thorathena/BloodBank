<!DOCTYPE html>
<html lang="en">
  
<head>
  <title>Hospital Requests</title>
  
  <link rel="stylesheet" type="text/css" href="style.css">
    <style>
   body{
   background-size:cover;
   background:url("img/image12.jpg");
   background-repeat: no-repeat; 
   }
   input[type=text] {
    width: 50%;
    padding: 5px 10px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 2px;
  }
  input[type=submit], input[type=reset] {
    padding: 5px 5px;
    border: none;
    border-radius: 2px;
    cursor: pointer;
    width: 20%;
  }
  .myform
		 {
			 background-color:white;
			 border: 1px solid gray;
			 margin-left:200px;
			 margin-right:200px;
			 margin-top:100px;
		 }
   
    </style>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <%@ include file = "header.jsp" %> 
  </head>
  <body>
<br><br>

<div class="container">
<div class="myform" style=" width: 60%  max-height: 100%; margin:auto;">
<form action="hreg.jsp" method="post" name="frmdetails" id="frmdetails" class="well form-horizontal">                     
	 
	<div class="form-group" >
     <label class="col-md-4 control-label">Hospital UserName </label>
	 <div class = "col-md-8">
		<input type="text" name="huname" size="34" id="huname" maxlength="15" value="" class="form-control" required />
	 </div>
    </div>    
     
	<div class="form-group" > 
     <label class="col-md-4 control-label">Hospital Name </label>   
	 <div class = "col-md-8">
	 <input type="text" name="hname" id="hname" value="" class="form-control" required />
	 </div>
    </div>
	
	<div class="form-group" >
     <label class="col-md-4 control-label">Password </label>          
     <div class = "col-md-8">
	 <input type="password" name="hpass"  id="hpass" maxlength="15" value="" class="form-control" required style="width:361px;" />
	</div>
    </div>
	
	 	 
	<div class="form-group" > 
     <label class="col-md-4 control-label">Address </label>
     <div class = "col-xs-8">
	 <p style="float:center; width: auto; margin:10; padding:-10; font-size:12px;"> </p>
	 <textarea name="address" id="address" class="form-control" rows="3" style="width:361px;" required></textarea></span>
    </div>
    </div> 
	 
	<div class="form-group" >
     <label class="col-md-4 control-label">City</label>     
	 <div class = "col-md-8">
	 <input type="text" name="city" size="34" maxlength="25" id="city" value="" required class="form-control" onkeyup="this.value=this.value.replace(/[^a-zA-Z]/g,'');" /></span>
    </div>
    </div> 
	 
	<div class="form-group" >
     <label class="col-md-4 control-label">Hospital Contact</label>
     <div class = "col-md-8">
	 <input type="text" name="contact" size="34" maxlength="20" id="contact" value="+91"  class="form-control" required onkeypress="return keyRestrict(event,'0123456789');"/></span>
    </div>
    </div> 
	 

     
     
     
	<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-2">
					<input class="btn1 btn-block" style="width:160px;" type="submit" name="btn_submit" id="btnsubmit" value="Submit" />
				</div>
				<div class="col-sm-2">
					<input class="btn2 btn-block" style="width:160px;" type="reset" name="reset" />
				</div>
   <div class="clear"></div>   
	</div>
 </form>
  
</div>
</div>
<br>
<br>
<br>
<br>
  
  <%@ include file = "footer.jsp" %> 
  
  </body>
</html>

