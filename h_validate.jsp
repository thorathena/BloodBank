<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
          
<%
Class.forName("org.gjt.mm.mysql.Driver").newInstance();

Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blood_bank","root","");

%>
<%
    String hid = request.getParameter("h_id");
   String val= request.getParameter("Submit");
    if ( hid != null )
   {
	int id = Integer.parseInt(request.getParameter("h_id"));
	if (val.equals("grant"))
	{
		String sql="update hospital_request set status=? where req_id=?";
		String status = "granted";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,status);
		ps.setInt(2,id);
		ps.executeUpdate();
		//response.sendRedirect("h_validate.jsp");
	}
	if (val.equals("delete"))
	{
		String sql="update hospital_request set status=? where req_id=?";
		String status = "denied";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,status);
		ps.setInt(2,id);
		ps.executeUpdate();
		//response.sendRedirect("h_validate.jsp");
    }
	
   }
   response.sendRedirect("request.jsp");
  %>
