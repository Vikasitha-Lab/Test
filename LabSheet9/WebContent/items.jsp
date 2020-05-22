<%@page import="model.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Item Details</title>

<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.5.0.min.js"></script>
<script src="Components/items.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-8">
				<h1 class="m-3">Item details</h1>
				<form id="formItem" name="formItem" method="post" action="items.jsp">
					Item code: 
					<input id="itemCode" name="itemCode" type="text" class="form-control form-control-sm"> 
					<br> Item name:
					<input id="itemName" name="itemName" type="text" class="form-control form-control-sm">
					<br> Item price: 
					<input id="itemPrice" name="itemPrice" type="text" class="form-control form-control-sm">
					 <br> Item description: 
					 <input id="itemDesc" name="itemDesc" type="text" class="form-control form-control-sm"> 
					 <br> 
					<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"> 
					<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>
				<br>
					<div id="alertSuccess" class="alert alert-success"></div>
			
					<br>
					<div id="alertError" class="alert alert-danger"></div>
					


				
				
	
			<div id="divItemsGrid">
				<%
					Item itemObj = new Item();
					out.print(itemObj.readItems());
				%>
			</div>
		


			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-12" id="colStudents"></div>
		</div>
	</div>

</body>
</html>