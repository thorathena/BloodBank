<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
         <div class="container-fluid">
        
         <div class="collapse navbar-collapse" id="myNavbar" >
         
       
       <div class="row" style="float: left;">
      
       <div class="col-sm-3"></div>
      <ul class="nav navbar-nav">
	  <%if(session.getAttribute("staff_username")!=null){
	String name=(String)session.getAttribute("staff_username");
	          
       %> 
	
	   <li><a><% out.print("Hi " + name); %><strong></strong></a></li>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;	  
	   <li><a href="s_logout.jsp">Logout</a></li>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
<%	
	}
	  
	else
	if(session.getAttribute("username")!=null){
		String name=(String)session.getAttribute("username");
	
%>
	<li><a><% out.print("Hi " + name); %><strong></strong></a></li>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;	  
	   <li><a href="s_logout.jsp">Logout</a></li>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
<%	
	}
	  
	else
	{
%>
		  
      <li><a href="index.jsp">Search Bloodbanks</a></li>
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
           <li><a href="hform.jsp">Hospital Registration</a></li>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
       <li><a href="hrequest.jsp">Hospital Request</a></li>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
       <li><a href="slogin.jsp">Staff Login</a></li>&ensp;&ensp;&ensp;&ensp;&ensp;
       <li><a href="login.jsp">User Login</a></li>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
	   <li><a href="register.jsp">Register</a></li>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
<%	 
	 }
	  
	  %>
    </ul>
       <div class="col-sm-3">
       
       </div>
       </div>
         </div>
         </div>
</nav>