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
<div class="col-md-7">
<c:url value="/images/${product.id }.png" var="imageUrl"></c:url>
<img src="${imageUrl }" style="width: 90%; height: 60% ;margin-top:20px">
</div>
<br><br>
<table class="table table-hover table-striped" style="width:40%;margin-top:-20px;margin-left:-850px">
<tr>
<td><strong>Price</strong></td><td><i class="fa fa-inr" style="font-size: 18px; color:blue"></i><b style="color:blue">${product.price}</b></td>
</tr>
<tr>
<td><strong>Product Description</strong></td><td>${product.description}</td>
</tr>


<tr>
<td><strong>Quantity:</strong></td><td>${product.quantity }</td>
</tr>
</table>
<c:if test="${product.quantity==0 }">
<strong>Out Of Stock</strong>
</c:if>


<c:if test="${product.quantity!=0 }">
<c:url value="/cartaddtocart${product.id}" var="url"></c:url>
<form action="${url}">
<security:authorize access="hasRole('ROLE_USER')">
<strong>Enter Units</strong><input  type="text" name="units"><br>

<button class="btn btn-primary" style="margin-left:500px ;margin-top:40px" type="submit" >
<i class="glyphicon glyphicon-shopping-cart" style="height: 22px; width: 129px">Add To Cart</i></button>
</form>
</security:authorize>
</c:if>
<c:url value="getallproducts" var="url1"></c:url>
<a class ="btn btn-primary" style="margin-top:-45px" href="${url1 }">Back to Product List</a><br>

</body>
</div>
</div>
<jsp:include page="footer.jsp" ></jsp:include>
</body>
</html>