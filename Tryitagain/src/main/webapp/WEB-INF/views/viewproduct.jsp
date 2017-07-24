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

<table>
<b>Details about Project </b>
<tr>
<c:url value="/images/${product.id }.png" var="imageUrl"></c:url>
<td><img src="${imageUrl }" height="70" width="70"></td>
<tr>
<td>Product Name</td><td>${product.productName}</td>
</tr>
<tr>
<td>Product Description</td><td>${product.description}</td>
</tr>
</table>
</body>
</html>