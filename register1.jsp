<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<html>
<head>
<!--<meta http-equiv="refresh" content="5; url="login.jsp">-->
<script>
        var timer = setTimeout(function() {
            window.location='login.jsp'
        }, 5000);
</script> 
</head>       
<%
Class.forName("org.gjt.mm.mysql.Driver").newInstance();

Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blood_bank","root","");

%>
<%
String username = request.getParameter("username");
String email = request.getParameter("email");
String pass = request.getParameter("password");
String pass2 = request.getParameter("password2");
String phone = request.getParameter("contact");


	java.sql.Statement statement = con.createStatement();
    ResultSet rs = statement.executeQuery("SELECT * FROM user where username='" + username  +"' order by username ");
	
	if ( rs.next() ) {
        out.println("<center> Username already exists</center><br>");
		out.println(" <center><input type=submit value=BACK name=sf1 onClick=history.back(-1) ></center><br>");
    }
else{
if(pass.equals(pass2)){
/*PreparedStatement pstmt = con.prepareStatement("INSERT INTO user(username,email,password,phone) VALUES ( ?,?,?,?)")  ;
pstmt.setString(1,username);
pstmt.setString(2,email);
pstmt.setString(3,pass);
pstmt.setString(4,phone);
	                        
pstmt.executeUpdate();
pstmt.close();*/

String strProcedure="{call insert_user(?,?,?,?)}"; 
CallableStatement cs=con.prepareCall(strProcedure);
cs.setString(1,username);
cs.setString(2,email);
cs.setString(3,pass);
cs.setString(4,phone);
//cs.registerOutParameter(3,java.sql.Types.VARCHAR);
cs.execute();
out.println("Registered successfully");%>
<center><a href = "login.jsp"><button class="btn btn-success">login</button></a></center>
<%
}
}
%>
</html>