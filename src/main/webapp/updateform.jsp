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
<title>UPDATE FORM</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%! String book, author, isbn, price, date; %>
<%

String ID = request.getParameter("id");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/bookmanagement", "root", "");
Statement stmt = con.createStatement();
String sql = "SELECT * FROM books WHERE ID="+ID;
ResultSet resultSet = stmt.executeQuery(sql);
while(resultSet.next()){
	book= resultSet.getString("Book");
	author= resultSet.getString("Author");
	isbn= resultSet.getString("isbn");
	price= resultSet.getString("price");
	date= resultSet.getString("date");
}
%>


<div class="form">
	<div class="head">
		<p>EDIT FORM</p>
	</div>
	<form action="updateoperations.jsp?id=<%=ID %>" method="post" class="row g-3">
	<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Book Name</label>
  <input type="text" class="form-control" value="<%=book %>" name="bname" id="formGroupExampleInput" placeholder="" >
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Author Name</label>
  <input type="text" class="form-control" value="<%=author %>" name="Aname" id="formGroupExampleInput2">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">ISBN</label>
  <input type="text" class="form-control" name="isbn" value="<%=isbn %>" id="formGroupExampleInput" placeholder="">
</div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Book Price</label>
    <input type="text" class="form-control" value="<%=price %>" name="price" id="inputEmail4">
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Date of Publish</label>
    <input type="text" class="form-control" value="<%=date %>" name="date" id="inputAddress" placeholder="DD/MM/YYY">
  </div>
  <div class="row g-3">
  <div class="col">
    <button type="submit" class="btn btn-primary">Update Records</button>
  </div>
  </div>
</form>
</div>

</body>
</html>

