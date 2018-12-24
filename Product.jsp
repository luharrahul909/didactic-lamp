<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<form:form action="InsertProduct" modelAttribute="product" enctype="multipart/form-data">
 

<table align="center">
	<tr>
		<td colspan="2"><h1>Product Details</h1></td>
	</tr>
	<tr>
		<td>Product ID</td>
		<td><form:input path="productId"/></td>		
	</tr>
	<tr>
		<td>Product Name</td>
		<td><form:input path="productName"/></td>		
	</tr>
	<tr>
		<td>Product Description</td>
		<td><form:input path="productDesc"/></td>		
	</tr>	
	<tr>
		<td>Product Stock</td>
		<td><form:input path="stock"/></td>		
	</tr>
	<tr>
		<td>Product Price</td>
		<td><form:input path="price"/></td>		
	</tr>

	<div class="form-group">
	<td>Category</td>
				<h3 class="input-title">Category Name</h3>
			<td>	<select class="form-control" name="catName" required>
				<option value="">----category choices----</option>
				<c:forEach items="${categoryList}" var="category">
				<option value="${category.catName}">${category.catName}</option></c:forEach>
					
				</select></td>
			</div>
	
	<div class="form-group">
	<td>Supplier</td>
				<h3 class="input-title">Supplier Id</h3>
			<td>	<select class="form-control" name="supplierId" required>
				<option value=""> ----supplier choices----</option>
				<c:forEach items="${supplierList}" var="supplier">
				<option value="${supplier.supplierId}">${supplier.supplierId}</option></c:forEach>
				</select></td>
			</div>
	
	
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="pimage"/></td>		
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="Insert"/></center>
		</td>		
	</tr>
	</table>
	<table cellspacing="2" align="center" >
<tr bgcolor="blue">
	<td>Product ID</td>
	<td>Product Name</td>
	<td>Product Description</td>
	<td>Product Stock</td>
	<td>Product Price</td>
	<td>CatName</td>
	<td>SupId</td> 
	<td>Operation</td>
</tr>
<c:forEach items="${productList}" var="product">
	<tr bgcolor="cyan">
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.productDesc}</td>
		<td>${product.stock}</td>
		<td>${product.price}</td>
		<td>${product.catName}</td>
		<td>${product.supplierId}</td>
		<td>
		<td>
			<a href="cart/${product.productId}">
			<img src="<c:url value="resources/images/${product.productId}.jpg"/>" width="150px" height="150px">
			</a>
		</td>
		<td>
			<a href="<c:url value="deleteProduct/${product.productId}"/>"><span class="glyphicon glyphicon-trash"></span></a>
			<a href="<c:url value="updateProduct/${product.productId}"/>"><span class="glyphicon glyphicon-pencil"></span></a>
		</td>
	</tr>
	
</c:forEach>

</table>
</form:form>





</body>
</html>