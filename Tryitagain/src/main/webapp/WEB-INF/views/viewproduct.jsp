<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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


<c:url value="/images/${product.id }.png" var="imageUrl"></c:url>
<img src="${imageUrl }" style="width: 60%; height: 60%">

<table class="table table-hover" style="width:40%">
<tr>
<td style=font-weight: bold;">${product.productName}</td>
</tr>
<tr>
<td>Product Description</td><td>${product.description}</td>
</tr>

<tr>
<td>Quantity:</td><td>${product.quantity }</td>
</tr>
</table>
<c:if test="${product.quantity==0 }">
Out Of Stock
</c:if>


<c:if test="${product.quantity!=0 }">
<c:url value="/cartaddtocart${product.id}" var="url"></c:url>
<form action="${url}">
<security:authorize access="hasRole('ROLE_USER')">
Enter Units<input  type="text" name="units"><br>

<button type="submit" style="background:none;border:none;padding:0" class="btn btn-default btn-lg">
<span class="glyphicon glyphicon-shopping-cart">Add To Cart</span></button>
</form>
</security:authorize>
</c:if>
<c:url value="getallproducts" var="url1"></c:url>
<a href="${url1 }">Back to Product List</a><br>

</body>
</div>
</div>
</body>
</html>