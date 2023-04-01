<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css files/getrecords.css">
<script src="jquery-3.6.0.min/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>view records</title>
</head>
<body>
	<%@ page import="java.sql.*" %>
	<%@ page import="java.io.*" %>
<table class="table">
  <thead>
    <tr>
<td>S.NO</td>
<td>BOOK NAME</td>
<td>AUTHOR NAME</td>
<td>ISBN</td>
<td>BOOK PRICE</td>
<td>DATE</td>
<td>ACTION</td>
</tr>
  </thead>
<%
	int i=0;
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/bookmanagement", "root", "");
	Statement stmt = con.createStatement();
	String sql = "SELECT * FROM books";
	ResultSet resultSet = stmt.executeQuery(sql);
	while(resultSet.next()){
%>
	<tbody>
    <tr>
<td><%=resultSet.getString("ID") %></td>
<td><%=resultSet.getString("Book") %></td>
<td><%=resultSet.getString("Author") %></td>
<td><%=resultSet.getString("isbn") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("date") %></td>
<td><a href="updateform.jsp?id=<%=resultSet.getString("id") %>"><input type="button" value="EDIT" class="btn btn-primary"></a>
<a href="delete.jsp?id=<%=resultSet.getString("id") %>"><input type="button" value="DELETE" class="btn btn-danger"></a></td>
</tr>
  </tbody>
 <%
i++;
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<a href="main.jsp"><input type="button" value="ADD NEW RECORDS" class="btn btn-secondary"></a>
</body>
</html>