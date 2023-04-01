<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Record</title>
</head>
<body>
	<%@ page import="java.sql.*" %>
	<%@ page import="java.io.*" %>
	<%
	String Book = request.getParameter("bname");
	String Author = request.getParameter("Aname");
	String isbn = request.getParameter("isbn");
	String price = request.getParameter("price");
	String date = request.getParameter("date");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/bookmanagement", "root", "");
	Statement stmt = con.createStatement();
	stmt.execute("INSERT INTO books(Book, Author, isbn, price, date) VALUES ('"+Book+"','"+Author+"','"+isbn+"','"+price+"','"+date+"')");
	con.close();
	response.sendRedirect("main.jsp");
	
	%> 
</body>
</html>