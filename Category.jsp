<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>OFMCG</title>
</head>
<link rel="stylesheet" href="resources\css\logincss.css">
<body bgcolor="gray" class="container">

<form:form action="AddCategory" modelAttribute="category" name="myform"> 
	<div class="logo">E-Commerce</div>
	<h1>Category List</h1>
	
		<table class="table">
		<tr>
				<td>Category ID:</td>
				<td><input type="text" name="catId" required="required"></td>
			</tr>
			<tr>
				<td>Category Name:</td>
				<td><input type="text" name="catName" required="required"></td>
			</tr>
			<tr>
				<td>Category Description:</td>
				<td><input type="text" name="catDesc" required="required"></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="Add" class="btn btn-primary"></td>
			</tr>
		</table>
</form:form>
	<c:if test="${!empty cateogoryList}">
		<table class="table table-bordered">
			<tr>
				<th width="80">Category ID</th>
				<th width="120">Category Name</th>
				<th width="200">Category Description</th>
				
				<th width="150">Action</th>
			</tr>
			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.catId}</td>
					<td>${category.catName}</td>
					<td>${category.catDesc}</td>
				
					<td><button class="btn btn-primary"
							style="margin-right: 40px;">Edit</button>
						<button class="btn btn-danger">Delete</button></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>