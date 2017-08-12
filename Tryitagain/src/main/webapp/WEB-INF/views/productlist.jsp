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
	<p class="text-center" style="font-size:25px;color:blue"><strong>List Of Products</strong></p>
	
<table class="table table-hover table-striped">
<thead>
<tr class="info">
	<th>Image</th>
	<th>Product Name</th>
	<th>Category</th>
	<th>Price</th>
	<th>Action</th>
</tr>
</thead>

<tbody>

<c:forEach items="${product}" var="product">

<c:url value="/viewproduct${product.id}" var="viewUrl"></c:url>
<c:url value="/images/${product.id}.png" var="imageUrl"></c:url>
<tr>
<td><a href="${viewUrl}"><img src="${imageUrl }" height="150px" width="150px"></a></td>
<td>
<a href="${viewUrl}"><h3 style="padding-top:40px">${product.productName}</h3></a>
</td>
<td><h3 style="padding-top:40px">${product.category.categoryName}</h3></td>
<td style="width:100px"><h3 style="padding-top:40px;color:blue"><i class="fa fa-inr" style="font-size: 28px; color:blue"></i>${product.price}</h3></td>


<td style="width:120px">

<a href="${viewUrl} "><span class="glyphicon glyphicon-info-sign" style="padding-top:60px;font-size:25px;color:seagreen"></span></a>&nbsp&nbsp

<security:authorize access="hasRole('ROLE_ADMIN')">
<c:url value="/deleteproduct/${product.id}" var="deleteUrl"></c:url>
<a href="${deleteUrl} "><span class="glyphicon glyphicon-trash" style="padding-top:60px;font-size:25px;color:red"></span></a>&nbsp&nbsp

<c:url value="/geteditform${product.id}" var="editUrl"></c:url>
<a href="${editUrl} "><span class="glyphicon glyphicon-pencil" style="padding-top:60px;font-size:25px;color:black"></span></a>&nbsp&nbsp

</security:authorize>

</td>
</tr>
</c:forEach>

</tbody>

</table>
</div>
<jsp:include page="footer.jsp" ></jsp:include>
</body>
</html>