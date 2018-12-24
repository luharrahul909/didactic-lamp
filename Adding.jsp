<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<br>
<br>
<br>
<br>



<div class="container">
 <h3 class="text-center">Hello ${sessionScope.username}</h3>  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Product</a></li>
    <li><a data-toggle="tab" href="#menu1">Category</a></li>
    <li><a data-toggle="tab" href="#menu2">Supplier</a></li>
  </ul>

 <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      		 <form:form method="post" action="InsertProduct" enctype="multipart/form-data" class="form-signing">
			<span id="reuth-email" class="reuth-email"></span>
			<h1>Product List</h1>
	
		<table class="table">
		<tr>
				<td>Product ID:</td>
				<td><input type="text" name="productId" required="required"></td>
			</tr>
			<tr>
				<td>Product Name:</td>
				<td><input type="text" name="productName" required="required"></td>
			</tr>
			<tr>
				<td>Product Description:</td>
				<td><input type="text" name="productDesc" required="required"></td>
			</tr>
			<tr>
				<td>Product Category:</td>
				<td><input type="text" name="catName" required="required"></td>
			</tr>
			<tr>
				<td>Product Price:</td>
				<td><input type="text" name="price" required="required"></td>
			</tr>
			<tr>
				<td>Product Stock:</td>
				<td><input type="text" name="stock" required="required"></td>
			</tr><tr>
				<td>Product SupplierId:</td>
				<td><input type="text" name="supplierId" required="required"></td>
			</tr></table>
		<div class="form-group">
				<h3 class="input-title">Category Name</h3>
			<td>	<select class="form-control" name="catName" required>
				<option value="">----category choices----</option>
				<c:forEach items="${catList}" var="category">
				<option value="${category.catName}">${category.catName}</option></c:forEach>
					
				</select></td>
			</div>
			
			<div class="form-group">
				<h3 class="input-title">Supplier Id</h3>
			<td>	<select class="form-control" name="supplierId" required>
				<option value=""> ----supplier choices----</option>
				<c:forEach items="${supList}" var="supplier">
				<option value="${supplier.supplierId}">${supplier.supplierId}</option></c:forEach>
				</select></td>
			</div>
		<center>	<button class="btn btn-lg btn-primary" type="submit">Save</button>
			<button class="btn btn-lg btn-primary" type="reset">Cancel</button></center>
			</form:form>
    </div></div></div>
      <div id="menu1" class="tab-pane fade">		
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
		<center>	<button class="btn btn-lg btn-primary" type="submit">Save</button>
			<button class="btn btn-lg btn-primary" type="reset">Cancel</button></center>
			</form>
    </div>
    	
<div id="menu2" class="tab-pane fade">
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


</body>
</html> --%>