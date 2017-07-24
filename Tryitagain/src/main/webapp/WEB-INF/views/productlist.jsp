<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ include file="header.jsp" %>
    

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
	
<table class="table table-hover">
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

<c:forEach items="${product}" var="p">

<c:url value="/images/${p.id}.png" var="imageUrl"></c:url>
<c:url value="/viewproduct/${p.id}" var="viewUrl"></c:url>
<c:url value="/deleteproduct/${p.id}" var="deleteUrl"></c:url>
<c:url value="/geteditform/${p.id}" var="editUrl"></c:url>

<tr>
<td><img src="${imageUrl }" height="50" width="50"></td>
<td>
<a href="${viewUrl} ">${p.productName}</a>
</td>
<td>${p.category.categoryName}</td>
<td>${p.price}</td>
<td>${p.description}</td>

<td>
<a href="${viewUrl} "><span class="glyphicon glyphicon-info-sign"></span></a>
<a href="${deleteUrl} "><span class="glyphicon glyphicon-trash"></span></a>
<a href="${editUrl} "><span class="glyphicon glyphicon-pencil"></span></a>
</td>
</tr>

</c:forEach>

</tbody>

</table>
</div>

</body>
</html>