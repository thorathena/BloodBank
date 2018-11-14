<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="refresh" content="5; url=index.jsp"> 
</head>           
<%
Class.forName("org.gjt.mm.mysql.Driver").newInstance();

Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blood_bank","root","");

%>
<%
String username = request.getParameter("huname");
String pass = request.getParameter("hpass");
String name = request.getParameter("hname");
String addr = request.getParameter("address");
String city = request.getParameter("city");
String contact = request.getParameter("contact");

if((username!=null) && (pass!=null) && (name!=null) && (addr!=null) && (city!=null) && (contact!=null)){
/*PreparedStatement pstmt = con.prepareStatement("INSERT INTO hospital(h_username,h_name,pass,address,city,contact) VALUES ( ?,?,?,?,?,?)")  ;
pstmt.setString(1,username);
pstmt.setString(2,name);
pstmt.setString(3,pass);
pstmt.setString(4,addr);
pstmt.setString(5,city);
pstmt.setString(6,contact);
	                        
pstmt.executeUpdate();
pstmt.close();*/

java.sql.Statement statement = con.createStatement();
    ResultSet rs = statement.executeQuery("SELECT * FROM hospital where h_username='" + username  +"' order by h_username ");
	
	if ( rs.next() ) {
        out.println("<center> Username already exists</center><br>");
		out.println(" <center><input type=submit value=BACK name=sf1 onClick=history.back(-1) ></center><br>");
    }
else{

String strProcedure="{call insert_hosp(?,?,?,?,?,?)}"; //your procedure name
CallableStatement cs=con.prepareCall(strProcedure);
cs.setString(1,username);
cs.setString(2,name);
cs.setString(3,pass);
cs.setString(4,addr);
cs.setString(5,city);
cs.setString(6,contact);
//cs.registerOutParameter(3,java.sql.Types.VARCHAR);
cs.execute();

out.println("Registered successfully");
%>
<center><a href = "hform.jsp"><button class="btn btn-success">back</button></a></center>
<%
}
}
else{
response.sendRedirect("hform.jsp");
}
%>