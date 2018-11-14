<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
          
<%
Class.forName("org.gjt.mm.mysql.Driver").newInstance();

Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blood_bank","root","");

%>
<%
    String uid = request.getParameter("u_id");
   String val= request.getParameter("Submit");
    if ( uid != null )
   {
	int id = Integer.parseInt(request.getParameter("u_id"));
	if (val.equals("grant"))
	{
		String sql="update user_request set status=? where r_id=?";
		String status = "granted";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,status);
		ps.setInt(2,id);
		ps.executeUpdate();
	}
	if (val.equals("delete"))
	{
		String sql="update user_request set status=? where r_id=?";
		String status = "denied";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,status);
		ps.setInt(2,id);
		ps.executeUpdate();
    }
   
   }
   response.sendRedirect("request.jsp");
  %>
