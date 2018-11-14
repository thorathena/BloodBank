<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

<%
	Class.forName("org.gjt.mm.mysql.Driver").newInstance();
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blood_bank","root","");
%>


<%
	String name=request.getParameter("username");
	String pwd=request.getParameter("password");
	
	java.sql.Statement statement = con.createStatement();
    ResultSet rs = statement.executeQuery("SELECT * FROM user where username='" + name  +"' and Password='" + pwd + "' order by username ");
	
	if ( rs.next() ) {
        String uname=rs.getString("username");     
       // String username = new String("username");
        session.setAttribute("username", uname);                 
        //out.print("welcome " + uname);
		response.sendRedirect("indexi.jsp");
         
    }
	else
	{ 
		out.println("<center>Dear User, your Username / Password  is  not correct;</center><br>");
		out.println(" <center><input type=submit value=BACK name=sf1 onClick=history.back(-1) ></center><br>");
	}
    statement.close();
    con.close();   
%>
