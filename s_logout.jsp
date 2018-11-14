<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%
session.invalidate();              
//out.print("You are successfully logged out!");  
response.sendRedirect("index.jsp");
%>