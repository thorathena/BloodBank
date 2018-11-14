<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<html>
<head>
<script>
        var timer = setTimeout(function() {
            window.location='index.jsp'
        }, 5000);
</script>
</head>          
<%
Class.forName("org.gjt.mm.mysql.Driver").newInstance();

Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blood_bank","root","");

String username = (String)request.getParameter("husername");
String pass = (String)request.getParameter("pass");
int op = Integer.parseInt(request.getParameter("op"));
int oneg = Integer.parseInt(request.getParameter("oneg"));
int ap = Integer.parseInt(request.getParameter("ap"));
int an = Integer.parseInt(request.getParameter("an"));
int bp = Integer.parseInt(request.getParameter("bp"));
int bn = Integer.parseInt(request.getParameter("bn"));
int abp = Integer.parseInt(request.getParameter("abp"));
int abn = Integer.parseInt(request.getParameter("abn"));

java.sql.Statement statement = con.createStatement();
ResultSet rs = statement.executeQuery("SELECT * FROM  hospital where h_username='" + username  +"' and pass='" + pass + "' order by h_username ");
	
	if ( rs.next() ) {
        
         

PreparedStatement pstmt = con.prepareStatement("INSERT INTO hospital_request (h_name,op,oneg,ap,an,bp,bn,abp,abn) VALUES ( ?,?,?,?,?,?,?,?,?);")  ;
pstmt.setString(1,username);
pstmt.setInt(2,op);

//ResultSet rs = statement.executeQuery("SELECT req_id FROM user where username='" + name  +"' and Password='" + pwd + "' order by username ");

//pstmt = con.prepareStatement("INSERT INTO hospital_request (on,ap) VALUES ( ?,?);");

pstmt.setInt(3,oneg);
pstmt.setInt(4,ap);
pstmt.setInt(5,an);
pstmt.setInt(6,bp);
pstmt.setInt(7,bn);
pstmt.setInt(8,abp);
pstmt.setInt(9,abn);

	                        
pstmt.executeUpdate();
pstmt.close();
out.println("Registered successfully");
//response.setHeader("Refresh", "10; URL="index.jsp");
}
else
{ 
	out.println("<center>Dear User, your Username / Password  is  not correct;</center><br>");
	out.println(" <center><input type=submit value=BACK name=sf1 onClick=history.back(-1) ></center><br>");
}
%>

<center><a href = "hrequest.jsp"><button class="btn btn-success">back</button></a></center>
</html>