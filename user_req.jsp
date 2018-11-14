<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<html>
<head>
<script>
        var timer = setTimeout(function() {
            window.location='indexi.jsp'
        }, 5000);
</script>
</head>
          
<%
Class.forName("org.gjt.mm.mysql.Driver").newInstance();

Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blood_bank","root","");

%>
<%
String username = (String)session.getAttribute("username");
String bgrp = request.getParameter("bloodgroup1");
String recpt = request.getParameter("receipt");
String doc = request.getParameter("doc");
String addr = request.getParameter("h_address");


PreparedStatement pstmt = con.prepareStatement("INSERT INTO user_request(username,bloodgrp,receipt,doctor,hosp_addr) VALUES ( ?,?,?,?,?)")  ;
pstmt.setString(1,username);
pstmt.setString(2,bgrp);
pstmt.setString(3,recpt);
pstmt.setString(4,doc);
pstmt.setString(5,addr);
	                        
pstmt.executeUpdate();
pstmt.close();
out.println("Registered successfully");


%>
<center><a href = "indexi.jsp"><button class="btn btn-success">back</button></a></center>
</html>