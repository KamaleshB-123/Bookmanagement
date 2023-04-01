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
<title>Student Records</title>
</head>
<body>
<div class="form">
	<div class="head">
		<p>BOOK MANAGEMENT ADMIN CONTROL</p>
	</div>
	<form action="insertrecord.jsp" class="row g-3">
	<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Book Name</label>
  <input type="text" class="form-control" name="bname" id="formGroupExampleInput" placeholder="" required>
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Author Name</label>
  <input type="text" class="form-control" name="Aname" id="formGroupExampleInput2" required>
</div>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">ISBN</label>
  <input type="text" class="form-control" name="isbn" id="formGroupExampleInput" placeholder="" required>
</div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Book Price</label>
    <input type="text" class="form-control" name="price" id="inputEmail4" required>
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Date of Publish</label>
    <input type="text" class="form-control" name="date" id="inputAddress" placeholder="DD/MM/YYY" required>
  </div>
  <div class="row g-3">
  <div class="col">
    <button type="submit" class="btn btn-primary">Add Records</button>
  </div>
  <div class="col">
    <a href="viewrecords.jsp"><input type="button" value="view  Records" class="btn btn-primary"></a>
  </div>
  </div>
</form>
</div>
</body>
</html>