<!DOCTYPE html>
<html lang="en">
  
<head>
  <title>Hospital Requests</title>
  <%@ include file = "header.jsp" %> 
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
   
    </style>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   
  </head>
  <body>

<div class="myform" style="background-color:white; width: 60%; max-height: 100%; margin:auto;">
<div class="container-fluid">
<form action="hreq.jsp" method="post" name="frmdetails" id="frmdetails">                     
	<div class="textip" style = "padding-left: 10%;"> 
     <label> Hospital Username  <span style="color:#FF0000">*</span></label>
          <span class="info_field"><span class="text-span">&ensp;
       <input type="text" name="husername" size="34" id="husername" maxlength="15" class="textfield" required /><br>
     </span><font face="Verdana" size="1" color="#008641">Max 15 characters</font></span>
   
   <br>   
   
   <label> Password  <span style="color:#FF0000">*</span></label>
          <span class="info_field"><span class="text-span">&ensp;
       <input type="password" name="pass" size="34" id="husername" maxlength="15" class="textfield" required /><br>
     </span></span>
   
   <br>   
   
     <label>Group O + <span style="color:#FF0000">*</span></label>
     <span class="info_field">&ensp;&ensp;&ensp;&ensp;&ensp;
	 <input value="0" type="text" name="op" size="34" maxlength="150" id="op" class="textfield"  onkeypress="return keyRestrict(event,'0123456789');"/></span>
  <br>
     <label>Group O - <span style="color:#FF0000">*</span></label>
     <span class="info_field">&ensp;&ensp;&ensp;&ensp;&ensp;&nbsp;
	 <input value="0" type="text" name="oneg" size="34" maxlength="150" id="oneg" class="textfield"  onkeypress="return keyRestrict(event,'0123456789');" /></span>
   <br>

     <label>Group A + <span style="color:#FF0000">*</span></label>
     <span class="info_field">&ensp;&ensp;&ensp;&ensp;&ensp;
	 <input value="0" type="text" name="ap" size="34" maxlength="150" id="ap" class="textfield"  onkeypress="return keyRestrict(event,'0123456789');" /></span>
   <br>

     <label>Group A - <span style="color:#FF0000">*</span></label>
     <span class="info_field">&ensp;&ensp;&ensp;&ensp;&ensp;&nbsp;
	 <input value="0" type="text" name="an" size="34" maxlength="150" id="an"  class="textfield"  onkeypress="return keyRestrict(event,'0123456789');" /></span>
   <br>

     <label>Group B + <span style="color:#FF0000">*</span></label> 
     <span class="info_field">&ensp;&ensp;&ensp;&ensp;&ensp;
	 <input value="0" type="text" name="bp" size="34" maxlength="150" id="bp" class="textfield"  onkeypress="return keyRestrict(event,'0123456789');" /></span>
   <br>

     <label>Group B - <span style="color:#FF0000">*</span></label>
     <span class="info_field">&ensp;&ensp;&ensp;&ensp;&ensp;&nbsp;
	 <input value="0" type="text" name="bn" size="34" maxlength="150" id="bn" class="textfield"  onkeypress="return keyRestrict(event,'0123456789');" /></span>
   <br>

     <label>Group AB + <span style="color:#FF0000">*</span></label>
     <span class="info_field">&ensp;&nbsp;&nbsp;&nbsp;&nbsp;
	 <input value="0" type="text" name="abp" size="34" maxlength="150" id="abp" class="textfield"  onkeypress="return keyRestrict(event,'0123456789');" /></span>
   <br>

     <label>Group AB - <span style="color:#FF0000">*</span></label>
     <span class="info_field">&ensp;&ensp;&ensp;&nbsp;
	 <input value="0" type="text" name="abn" size="34" maxlength="150" id="abn"  class="textfield"  onkeypress="return keyRestrict(event,'0123456789');" /></span>
   <br>

     <input class="btn1 " style="padding:10px; width:44.2%; " type="submit" name="submit" value="Submit" />
     <input class="btn2 " style="padding:10px; width:44.2%; " type="reset" name="reset" value="Reset" />
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

