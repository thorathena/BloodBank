 <%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
          
<%
Class.forName("org.gjt.mm.mysql.Driver").newInstance();

Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blood_bank","root","");
%>

	

<%
if(request.getParameter("state_id")!=null) 
{
        PreparedStatement pstmt=null ; //create statement
        int state = Integer.parseInt(request.getParameter("state_id"));       
        pstmt=con.prepareStatement("select d_id,district from districts where s_id=? "); //sql select query
        pstmt.setInt(1,state);
        ResultSet rs=pstmt.executeQuery(); //execute query and set in resultset object rs.
        %>        
            <option selected="selected" value=" ">--Select District--</option>
         <%
		while(rs.next())
		{
	%>
	<option value="<%=rs.getInt("d_id") %>"><%=rs.getString("district") %></option>
	<%
		}
	
        con.close(); //close connection
    
   
}
%>