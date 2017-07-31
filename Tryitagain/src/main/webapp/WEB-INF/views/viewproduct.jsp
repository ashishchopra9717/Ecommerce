<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="panel panel-primary" style="height: 545px; width: 750px; margin:auto">
		<div class="panel-heading" style="text-align:center;font-size:25px">${product.productName}</div>
		<div class="panel-body" style="background:#e8f3f8">


<table style="border: 1px solid">
<tr>
<c:url value="/images/${product.id }.png" var="imageUrl"></c:url>
<td rowspan="2"><img src="${imageUrl }" height="270" width="270"></td>
<td>Product Name</td><td>${product.productName}</td>

<tr>
<td>Product Description</td><td>${product.description}</td>
</tr>
</table>

<br>
Enter Units<input type="text" name="units">

<c:url value="/cart/addtocart/${product.id}_${units}" var="cart">
</c:url>

<a href="${cart}"><span class="glyphicon glyphicon-shopping-cart"></span></a>
</div>
</div>
</body>
</html>