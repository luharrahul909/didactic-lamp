<%@ page language="java" contentType="text/html" import="com.model.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<title>User-FMCG</title>
</head>
<body>


<form:form action="${pageContext.request.contextPath}//UpdateUser" modelAttribute="user" method="post">

<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">User Module</td>
	</tr>
	<tr>
		<td>userName</td>
		
		<td><form:input path="userName"/></td>
	</tr>
	<tr>
		<td>userEmail</td>
		
		<td><form:input path="userEmail"/></td>
	</tr>
	<tr>
		<td>userPassword</td>
		
		<td><form:input path="userPassword"/></td>
	</tr>
	<tr>
		
	<tr>
		<td>userPhone</td>
		
		<td><form:input path="userPhone"/></td>
	</tr>
	<tr>
		<td>userAddress</td>
		
		<td><form:input path="userAddress"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="Updateser"/></center>
		</td>
	</tr>
</table>
</form:form>

<table cellspacing="2" align="center">
<tr bgcolor="gray">
	<td>userName</td>
	<td>userEmail</td>
	<td>userPassword</td>
	<td>userPhone</td>
	<td>userAddress</td>
	<td>Operation</td>
</tr>
<c:forEach items="${userList}" var="user">
	<tr bgcolor="cyan">
		<td>${user.userName}</td>
		<td>${user.userEmail}</td>
		<td>${user.userPassword}</td>
		<td>${user.userPhone}</td>
		<td>${user.userAddress}</td>
		<td>
			<a href="<c:url value="deleteUser/${user.userName}"/>"><span class="glyphicon glyphicon-trash"></span></a>
			<a href="<c:url value="updateUser/${user.userName}"/>"><span class="glyphicon glyphicon-pencil"></span></a>
		</td>
	</tr>
</c:forEach>

</table>

</body>
</html>