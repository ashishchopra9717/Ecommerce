<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<form:form action="saveProduct" method="post" modelAttribute="product">
	<div class="form-group">
	<form:hidden path="id"/><br>
	</div>
	<br>
	
	<div class="form-group">
	Enter Product Name
	<form:input path="productName"/><br>
	</div>
	<br>
	
	<div class="form-group">
	Enter Price
	<form:input path="price"/><br>
	</div>
	<br>
	
	<div class="form-group">
	Enter Quantity
	<form:input path="quantity"/><br>
	</div>
	<br>
	
	<div class="form-group">
	Enter Description
	<form:textarea path="description"/>
	</div>
	<br>
	
	<div class="form-group">
	Select category
	<c:forEach items="{categories}" var="c"></c:forEach>
	<form:radiobutton path="category.id" value="${c.id}"/>${c.categoryName}
	</div>
	<br>
	<input type="submit" value="Add Product">
</form:form>
</body>
</html>

