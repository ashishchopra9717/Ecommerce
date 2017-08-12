<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

	<jsp:include page="header.jsp"></jsp:include>


	<div class="panel panel-primary" style="height: 695px; width: 550px; margin:auto">
		<div class="panel-heading" style="text-align:center;font-size:25px">Product Form</div>
		<div class="panel-body" style="background:#e8f3f8">


			<form:form action="saveProduct" method="post" modelAttribute="product" enctype="multipart/form-data">

				<div class="form-group">
					<form:hidden path="id" class="form-control" />
				</div>

				<div class="form-group" style="margin:20px 0px">
					<strong>Product Name</strong>
					<form:input path="productName" class="form-control"
						placeholder="Enter Product Name" />
						<br>
					<form:errors path="productName" cssStyle="color:red"></form:errors>
				</div>

		<div class="form-group" style="margin:20px 0px">
			<strong>Price</strong>
			<form:input path="price" class="form-control"/>
			<br>
			<form:errors path="price" cssStyle="color:red"></form:errors>
		</div>
		

		<div class="form-group" style="margin:20px 0px">
			<strong>Quantity</strong>
			<form:input path="quantity" class="form-control"/><br>
			<form:errors path="quantity" cssStyle="color:red"></form:errors>
		</div>

		<div class="form-group" style="margin:20px 0px">
			<strong>Enter Description</strong>
			<form:textarea path="description" class="form-control"
				placeholder="Enter Description" /><br>
			<form:errors path="description" cssStyle="color:red"></form:errors>
		</div>
		
		<div class="form-group">
						<b> Select Category</b>
						<form:select path="category.id" class="form-control" style="width:94%">
							<c:forEach items="${categories}" var="c">
								<form:option value="${c.id}">
								${c.categoryName}  
                                 </form:option>

							</c:forEach>
						</form:select>
					</div>

		
		<div class="form-group" style="margin:20px 0px">
			<p style="font-size:15px; font-weight:bold; margin-bottom:10px">Upload an image</p>
			
			<input type="file" name="image"/>
		</div>

		<input type="submit" class="btn btn-primary btn-block" value="Add Product">
		</form:form>
		
		</div>
		</div>
	

</body>
</html>

