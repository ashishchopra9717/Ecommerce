<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!-- Angular Js -->
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<!-- JQuery -->
<script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css">

<title>Insert title here</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
	
<div class="container">
	<p class="text-center"><strong>Cart</strong></p>
	
	<c:url value="/cart/clearcart/${cart.id}" var="clear"></c:url>
	<a href="${clear}" class="btn btn-danger pull-left">
	<span class="glyphicon glyphicon-remove-sign">Clear Cart</span>
	</a>
	
	<c:url value="/cart/orders/${cart.id}" var="order"></c:url>
	<a href="${order}" class="btn btn-warning pull-right">
	<span class="glyphicon glyphicon-shopping-cart">Checkout</span>
	</a>
	
<table class="table table-hover table-striped">
<thead>
<tr class="info">
	<th>Product Name</th>
	<th>Quantity</th>
	<th>Price</th>
	<th>Remove</th>

</tr>
</thead>
<c:set var="grandTotal" value="0"></c:set>

<tbody>

<c:forEach items="${cart.cartItems}" var="cartItem">
<tr>
<td>${cartItem.product.productName}</td>
<td>${cartItem.quantity}</td>
<td>${cartItem.totalPrice}</td>

<c:url value="/cart/removecartitem/${cartItem.cartItemId}" var="remove"></c:url>
<td><a href="${remove}" class="label label-danger"><span class="glyphicon glyphicon-remove">Remove</span></a></td>

<c:set var="grandTotal" value="${cartItem.totalPrice + grandTotal }"></c:set>
</tr>
</c:forEach>

</tbody>

</table>
Total Price:${grandTotal}
</div>

</body>
</html>