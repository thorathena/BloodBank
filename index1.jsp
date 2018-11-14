<!DOCTYPE html>
<html lang="en">
 <head>
       
        <title>ABC bloodbank</title>
        <link rel="stylesheet" type="text/css" href="style.css">
	 <!--<style>
	   body{
	 background-size:cover;
	 background:url("blooddonation.jpg");
	 background-repeat: no-repeat; 
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
	 	  
	.my
	  {
	  
	  background:tred.jpg;
	border: 1px solid gray;
	
    margin-left:200px;
	margin-right:800px;
	margin-top:100px;
	  }
a.submenu {
		 color: black;
		 background-color:transparent;
		 }
a.submenu:hover{
		 color: red;
		 background-color:transparent;
		 }
		 

</style>-->
<?php
    include 'header.php';
?>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	  
	 

	  </head>
	   
	<body>
	
	<div class="myform">
	<h3 class="full-width">
  <div class="wrap">Search Blood Donors</div>
  </h3><br><br>
 <form method="post" action="print.php">
 <div class="row">
 <div class="col-sm-2"></div>
  <div class="col-sm-4">
	 <select class="form-control selectpicker" name="state1">
         
	                               <option value="">Select-state</option>
      
                                  <option>ANDHRA PRADESH</option>

                                  
                                  <option>ASSAM</option>

                                  
                                  <option>ARUNACHAL PRADESH</option>

                                  
                                  <option>GUJRAT</option>

                                  
                                  <option>BIHAR</option>

                                  
                                  <option>HARYANA</option>

                                  
                                  <option>HIMACHAL PRADESH</option>

                                  
                                  <option>JAMMU & KASHMIR</option>

                                  
                                  <option>KARNATAKA</option>

                                  
                                  <option>KERALA</option>

                                  
                                  <option>MADHYA PRADESH</option>

                                  
                                  <option>MAHARASHTRA</option>

                                  
                                  <option>MANIPUR</option>

                                  
                                  <option>MEGHALAYA</option>

                                  
                                  <option>MIZORAM</option>

                                  
                                  <option>NAGALAND</option>

                                  
                                  <option>ORISSA</option>

                                  
                                  <option>PUNJAB</option>

                                  
                                  <option>RAJASTHAN</option>

                                  
                                  <option>SIKKIM</option>

                                  
                                  <option>TAMIL NADU</option>

                                  
                                  <option>TRIPURA</option>

                                  
                                  <option>UTTAR PRADESH</option>

                                  
                                  <option>WEST BENGAL</option>

                                  
                                  <option>DELHI</option>

                                  
                                  <option>GOA</option>

                                  
                                  <option>PONDICHERY</option>

                                  
                                  <option>LAKSHDWEEP</option>

                                  
                                  <option>DAMAN & DIU</option>

                                  
                                  <option>DADRA & NAGAR</option>

                                  
                                  <option>CHANDIGARH</option>

                                  
                                  <option>ANDAMAN & NICOBAR</option>

                                  
                                  <option>UTTARAKHAND</option>

                                  
                                  <option>JHARKHAND</option>

                                  
                                  <option>CHATTISGARH</option>

    </select>
	</div>
	 <div class="col-sm-4">
	 
	 <select class="form-control selectpicker" name="bloodgroup1">
	<option value="">Blood-group</option>
      <option>A+</option>
      <option>A-</option>
      <option>B+</option>
      <option>B-</option>
      <option>AB-</option>
      <option>AB+</option>
      <option>O+</option>
      <option>O-</option>
    </select> <div class="col-sm-2"></div>
	</div>
 </div><br><br>
 <div class="row">
 <div class="col-sm-4"></div>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
     <input type="submit" value="Search">
 </div>
        
  
  </form><br><div class="wrap"><h2>Want to find a Donor?</h2></div>
 <div class="row">
 <div class="col-sm-4"></div>


<form action="recieverform.html">
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
    <button type="submit" class="btn btn-success btn-lg">Register Now</button>
</form>
     
	<br><br><br>
 
    </div>
	
	</div>
	

  <br><br><br>
  <?php
        include 'footer.php';
  ?>
  </body>
</html>

