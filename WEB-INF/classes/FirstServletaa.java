import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
 public class FirstServletaa extends HttpServlet
{
 public void doGet (HttpServletRequest request, HttpServletResponse response)
  throws ServletException, IOException
  {
   PrintWriter out;
   String nam1=request.getParameter("name");
   String col1=request.getParameter("color");

   String title="This is Dr Sastry's JAVA Servlet Program";
   response.setContentType("text/html");
   out=response.getWriter();

   out.println("<HTML>");
   out.println("<HEAD><TITLE>");
    out.println(title);
   out.println("</TITLE></HEAD>");
    if (col1==null) out.println("<BODY bgcolor=cyan>");
    else  out.println("<BODY bgcolor="+col1+">");
       out.println("<H2>Congratulations! <br>");
     if (nam1==null)    out.println("<H2>Dr SASTRY! <br>");
                     else  out.println("<H2>" + nam1);

    out.println("<H1>"+title+"</H1>");
     out.println("</BODY>");
     out.println("</HTML>");
    out.close();
   }
 }
