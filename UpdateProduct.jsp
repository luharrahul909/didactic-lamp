<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<title>Product-FMCG</title>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>

<form:form action="${pageContext.request.contextPath}//UpdateProduct" modelAttribute="product" method="post">

<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">Product Module</td>
	</tr>
	<tr>
		<td>Product ID</td>
		<!--<td><input type="text" name="catId"/></td>-->
		<td><form:input path="productId"/></td>
	</tr>
	<tr>
		<td>Product Name</td>
		<!-- <td><input type="text" name="catName"/></td> -->
		<td><form:input path="productName"/></td>
	</tr>
	<tr>
		<td>Product Desc</td>
		
		<td><form:input path="productDesc"/></td>
	</tr>
	<tr>
	<td>Product Stock</td>
		
		<td><form:input path="stock"/></td>
	</tr>
	<tr>
	<td>Product price</td>
		
		<td><form:input path="price"/></td>
	</tr>
	<tr>
	<td>SupId</td>
		
		<td><form:input path="supplierId"/></td>
	</tr>
	<tr>
	<td>CatName</td>
		
		<td><form:input path="catName"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="UpdateProduct"/></center>
		</td>
	</tr>
	
</table>
</form:form>

<table cellspacing="2" align="center">
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
			<a href="<c:url value="deleteProduct/${product.productId}"/>"><span class="glyphicon glyphicon-trash"></span></a>
			<a href="<c:url value="updateProduct/${product.productId}"/>"><span class="glyphicon glyphicon-pencil"></span></a>
		</td>
	</tr>
	
</c:forEach>

</table>

</body>
</html>
