<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="header.jsp" %>
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width,initial-scale=1">

<title>Insert title here</title>
</head>
<body>
<c:forEach items="${cartItems}" var="cartItem">
<c:set var="totalitems" value="${cartItem.quantity + totalitems}">
</c:set>
</c:forEach>

<c:if test="${totalitems!=null}">
<div class="panel panel-warning" style="height: 545px; width: 1050px; margin:auto">

		<div class="panel-body" style="background:#e8f3f8">

  <c:url value="/cart_clearcart${a}" var="clear"></c:url>
	<a href="${clear}" class="btn btn-warning pull-left" style="font-size:20px">
	<span class="glyphicon glyphicon-shopping-cart" style="font-size:15px"><b style="font-size:18px">Clear Cart</b></span>
	</a>
	
	

	
	<c:url value="/success${a}" var="order"></c:url>
	<a href="${order}" class="btn btn-success pull-right" style="font-size:20px">
	<span class="glyphicon glyphicon-shopping-cart" style="font-size:15px"><b style="font-size:18px">Checkout</b></span>
	</a> 
	
<table class="table table-striped">
<thead>
<tr>
	<th>Product Name</th>
	<th>Quantity</th>
	<th>Price</th>
	<th>Remove</th>

</tr>
</thead>
<c:set var="grandTotal" value="0"></c:set>



<c:forEach items="${cartItems}" var="cartItem">
<tr>
<td>${cartItem.product.productName}</td>
<td>${cartItem.quantity}</td>
<td>${cartItem.totalPrice}</td>

<c:url value="/cart_removecartitem${cartItem.cartItemId}" var="remove"></c:url>
<td><a href="${remove}" class="label label-danger" style="font-size:15px"><span class="glyphicon glyphicon-remove" style="font-size:15px">Remove</span></a></td>

<c:set var="grandTotal" value="${cartItem.totalPrice + grandTotal }"></c:set>
</tr>
</c:forEach>

</table>
<p style="font-size:30px">Total Price:${grandTotal}</p>
</div>
</div>
</c:if>
<c:if test="${totalitems==null}">
<div class="panel">
<div class="panel panel-heading">
<h2>Shopping Cart</h2></div>
<div class="panel panel-body">
<h1>Your Shopping Cart Is Empty</h1>
<a href="getallproducts" class="btn btn-primary" style="height: 50px; width: 30%; margin-left: 375px; background-color: #fb641b; font-size: 18px;">CONTINUE SHOPPING</a>
</div>
</div>
</c:if>
</body>
</html>