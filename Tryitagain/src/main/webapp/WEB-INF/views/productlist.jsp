<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@include file="header.jsp" %>
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width,initial-scale=1">

<script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';
		$('.table').DataTable({
			"lengthMenu" : [ [ 3, 5, 7, -1 ], [ 3, 5, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	});
</script>


<title>Insert title here</title>
</head>
<body>

	
<div class="container">
	<p class="text-center"><strong>List Of Products</strong></p>
	
<table class="table table-hover table-striped">
<thead>
<tr class="info">
	<th>Image</th>
	<th>Product Name</th>
	<th>Category</th>
	<th>Price</th>
	<th>Product Description</th>
	<th>Action</th>
</tr>
</thead>

<tbody>

<c:forEach items="${product}" var="product">

<c:url value="/images/${product.id}.png" var="imageUrl"></c:url>
<tr>
<td><img src="${imageUrl }" height="50" width="50"></td>
<td>
<a href="${viewUrl} ">${product.productName}</a>
</td>
<td>${product.category.categoryName}</td>
<td>${product.price}</td>
<td>${product.description}</td>

<td>

<c:url value="/viewproduct${product.id}" var="viewUrl"></c:url>
<a href="${viewUrl} "><span class="glyphicon glyphicon-info-sign" style="color:seagreen"></span></a>&nbsp&nbsp

<security:authorize access="hasRole('ROLE_ADMIN')">
<c:url value="/deleteproduct/${product.id}" var="deleteUrl"></c:url>
<a href="${deleteUrl} "><span class="glyphicon glyphicon-trash" style="color:black"></span></a>&nbsp&nbsp

<c:url value="/geteditform${product.id}" var="editUrl"></c:url>
<a href="${editUrl} "><span class="glyphicon glyphicon-pencil" style="color:blue"></span></a>&nbsp&nbsp

</security:authorize>

</td>
</tr>
</c:forEach>

</tbody>

</table>
</div>

</body>
</html>