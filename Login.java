//package bloodbank;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
//import java.io.*
// Extend HttpServlet class
//@WebServlet("/Login")
@WebServlet("/Login")
public class Login extends HttpServlet {

   // Method to handle GET method request.
  /* public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      
      // Set response content type
      response.setContentType("text/html");

      PrintWriter out = response.getWriter();
      String title = "Using GET Method to Read Form Data";
      String docType =
         "<!doctype html public \"-//w3c//dtd html 4.0 " +
         "transitional//en\">\n";
         
      out.println(docType +
         "<html>\n" +
            "<head><title>" + title + "</title></head>\n" +
            "<body bgcolor = \"#f0f0f0\">\n" +
               "<h1 align = \"center\">" + title + "</h1>\n" +
               "<ul>\n" +
                  "  <li><b>First Name</b>: "
                  + request.getParameter("first_name") + "\n" +
                  "  <li><b>Last Name</b>: "
                  + request.getParameter("last_name") + "\n" +
               "</ul>\n" +
            "</body>"
         "</html>"
      );
   }
*/
   // Method to handle POST method request.
   public void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

      //doGet(request, response);
	  response.setContentType("text/html");
	  HttpSession session = request.getSession(true);
      PrintWriter out = response.getWriter();
	  
	  String name=request.getParameter("username");
	  String pwd=request.getParameter("password");
	  
	  try{
		  Class.forName("org.gjt.mm.mysql.Driver").newInstance();
		  Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blood_bank","root","");
		  
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
	  
	  }
	  catch(Exception e)
	  {System.out.println(e);}
	  
   }
}