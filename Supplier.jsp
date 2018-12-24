<%@ page language="java" contentType="text/html" import="com.model.Supplier"%>
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
<jsp:include page="AdminHeader.jsp"></jsp:include>
<form:form action="AddSupplier" modelAttribute="supplier" name="myform"> 
	<div class="logo">E-Commerce</div>
	<h1>Supplier List</h1>
	
		<table class="table">
		<tr>
				<td>Supplier ID:</td>
				<td><input type="text" name="supplierId" required="required"></td>
			</tr>
			<tr>
				<td>Supplier Name:</td>
				<td><input type="text" name="supplierName" required="required"></td>
			</tr>
			<tr>
				<td>Supplier Address:</td>
				<td><input type="text" name="supplierAddress" required="required"></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="Add" class="btn btn-primary"></td>
			</tr>
		</table>
</form:form>
	
		<table class="table table-bordered">
			<tr>
				<th width="80">Supplier ID</th>
				<th width="120">Supplier Name</th>
				<th width="200">Supplier Address</th>
				<th>Operation</th>
				
				
			</tr>
			<c:forEach items="${supplierList}" var="supplier">
				<tr>
					<td>${supplier.supplierId}</td>
					<td>${supplier.supplierName}</td>
					<td>${supplier.supplierAddress}</td>
					<td>
			<a href="<c:url value="deleteSupplier/${supplier.supplierId}"/>"><span class="glyphicon glyphicon-trash"></span></a>/
			<a href="<c:url value="updateSupplier/${supplier.supplierId}"/>"><span class="glyphicon glyphicon-pencil"></span></a>
		</td>
					
					
				</tr>
			</c:forEach>
		</table>
	
</body>
</html>