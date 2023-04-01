<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
	<%@ page import="java.io.*" %>
	<%
	String id = request.getParameter("id");
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/bookmanagement", "root", "");
	Statement stmt = con.createStatement();
	stmt.executeUpdate("DELETE FROM books WHERE id="+id);
	con.close();
	response.sendRedirect("viewrecords.jsp");
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>