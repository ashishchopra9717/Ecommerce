<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:url value="/j_spring_security_check" var="login"></c:url>
<div class="panel panel-primary" style="height: 325px; width: 450px; margin-left:450px; margin-top:50px">
		<div class="panel-heading" style="text-align:center;font-size:25px">Login</div>
		<div class="panel-body" style="background:#e8f3f8">
<form action="${login}" method="post">

<label><b>Enter Username</b></label> 
 <input type="text" name="j_username" placeholder="User Name" style="height:100; margin-top:20px;margin-left:10px"><br><br><br>

<label><b>Enter Password</b></label>
<input type="password" name="j_password" placeholder="Password" style="height:100;margin-left:10px"><br><br><br>

<input type="checkbox" checked="checked">Remember Me

<c:url value="/registrationform" var="register"></c:url>
<a href="${register}"style="margin-left:200px">New User!!</a><br><br>
<input type="submit" class="btn btn-primary btn-block" value="Login">

</form>
</div>
</div>
</body>
</html>