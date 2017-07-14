<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script src="http://ajax.googleeapis.com/ajax/lib/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<form:form action="${url}" modelAtribute="productObj">
	
	<div class="form-group">
	<form:hidden path="id"></form:hidden>
	</div>
	<br>
		
		<div class="form-group">
		Product Name: <form:input path="productName"/>
		</div>
		<br>
		
		<div class="form-group">
		Product Description: <form:input path="description"/>
		</div>
		<br>
		
		<div class="form-group">
		Price: <form:input path="price"/>
		</div>
		<br>
		
		<div class="form-group">
		Quantity: <form:input path="quantity"/>
		</div>
		<br>
		
		<div class="form-group">
	Select category
	<c:forEach items="{categories}" var="c"></c:forEach>
	<form:radiobutton path="category.id" value="${c.id}"/>${c.categoryName}
	</div>
	<br>
		
		<input type="submit" value="Edit Product">

</form:form>
</body>
</html>