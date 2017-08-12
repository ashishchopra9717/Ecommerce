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

  <c:url value="/cart_clearcart${a}" var="clear"></c:url>
	<a href="${clear}" class="btn btn-warning pull-right">
	<span class="glyphicon glyphicon-shopping-cart">clear</span>
	</a>
	
	

	
	<c:url value="/cart/orders/${a}" var="order"></c:url>
	<a href="${order}" class="btn btn-warning pull-right">
	<span class="glyphicon glyphicon-shopping-cart">Checkout</span>
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
<td><a href="${remove}" class="label label-danger"><span class="glyphicon glyphicon-remove">Remove</span></a></td>

<c:set var="grandTotal" value="${cartItem.totalPrice + grandTotal }"></c:set>
</tr>
</c:forEach>

</table>
Total Price:${grandTotal}


</body>
</html>