<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update operation</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


<%
String ID = request.getParameter("id");
String Book = request.getParameter("bname");
String Author = request.getParameter("Aname");
String isbn = request.getParameter("isbn");
String price = request.getParameter("price");
String date = request.getParameter("date");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/bookmanagement", "root", "");
Statement stmt = con.createStatement();
String sql = "UPDATE books SET Book='"+Book+"',Author='"+Author+"',isbn='"+isbn+"',price='"+price+"',date='"+date+"' where id="+ID;
stmt.executeUpdate(sql);
con.close();
response.sendRedirect("viewrecords.jsp");
%>
</body>
</html>