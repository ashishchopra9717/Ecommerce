<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@ page isELIgnored="false" %>
<html>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1" >

<link href="images/stylesheet.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

<!-- JQuery -->
<script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>


<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css">

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css"/>

<script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>


<title>Homepage</title>
</head>
<body>
<nav style="background:black;margin:0px"class="navbar" >

<c:url value="/index" var="home"></c:url>
<c:url value="images/logo.png" var="logo"></c:url>
<a class="navbar-brand" href="${home}"><img src="${logo}" alt="GO" height="100px" width="300px" style="margin-top:-15px"></a>

<form class="navbar-form pull-right">
<input type="text" class="form-control" placeholder="Search here" style="width: 700px;margin:20px 0px">
<button type="submit" class="btn-btn-default "><span class="glyphicon glyphicon-search"></span></button>
</form>

</nav>

 <nav style="background:black"class="navbar" >
  <div class="container">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapsed" data-target="#collapse-example" aria expanded="false">

<span class="sr-only">Toggle Navigation</span>

<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div><!-- end container -->



<div class="collapse navbar-collapse" id="collapse-example">

<ul class="nav navbar-nav" style="margin-left:150px">	
	
	<li class="active">
		<a href="${home}"><span class="glyphicon glyphicon-home" style="color:white"></span> <font color="white">Home</font></a>
	</li>
<span class="sr-only">You are in Homepage</span>

<li>
	<c:url value="/aboutus" var="about"></c:url>
		<a href="${about}"><font color="white">About Us</font></a>
	</li>
<span class="sr-only">About Us</span>

<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-phone" style="color:white"><font color="white"> Mobile</font><strong class="caret"></strong></a>

		<ul class="dropdown-menu">
		<li>
			<a href="#">Mobile</a>
		</li>
		<li>
			<a href="#">Smartphones</a>
		</li>
		<li>
			<a href="#">Tablets</a>
		</li>
		<li class="divider"></li>
		
		<li class="dropdown-header">More Services</li>
		<li>
			<a href="#">Wearables</a>
		</li>
		<li>
			<a href="#">Other Phones</a>
		</li>
		<li>
			<a href="#">Accessories</a>
		</li>
	</ul>
</li>


<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#"><font color="white">TV&AV</font><strong class="caret" style="color:white"></strong></a>

		<ul class="dropdown-menu">
		<li>
			<a href="#">QLED TV</a>
		</li>
		<li>
			<a href="#">UHD TV</a>
		</li>
		<li>
			<a href="#">FULL HD TV</a>
		</li>
		<li class="divider"></li>
		
		<li class="dropdown-header">More Services</li>
		<li>
			<a href="#">HD TV</a>
		</li>
	</ul>
</li>


<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-sd-video" style="color:white"> <font color="white">MEMMORY&STORAGE</font><strong class="caret" style="color:white"></strong></a>

		<ul class="dropdown-menu">
		<li>
			<a href="#">SSD</a>
		</li>
		<li>
			<a href="#">Portable SSD</a>
		</li>
		<li>
			<a href="#">Memory Card</a>
		</li>
		<li class="divider"></li>
		
	</ul>
</li>

	<li>
	<c:url value="getallproducts" var="allproduct"></c:url>
	<a href="${allproduct}"><strong><font color="white">View Products</font></strong></a>
	</li>
	


	<c:if test="${pageContext.request.userPrincipal.name==null}">
			
			<li>
			<c:url value="/registrationform" var="register"></c:url>
			<a href="${register}"><span class="glyphicon glyphicon-log-in" style="color:white"></span><strong><font color="white">Sign Up</font></strong></a>
		</li>
		
		<li>
			<c:url value="/login" var="login"></c:url>
			<a href="${login}"><span class="glyphicon glyphicon-log-in" style="color:white"></span><strong><font color="white">Sign In</font></strong></a>
		</li>
		
	</c:if>

	
	<li class="dropdown">
	
	<c:if test="${pageContext.request.userPrincipal.name!=null }">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user" style="color:white"></span><font color="white">Welcome ${pageContext.request.userPrincipal.name }</font><strong class="caret" style="color:white"></strong></a>
	</c:if>
	
		<ul class="dropdown-menu">
		<li> 
			<c:url value="/admin-getproductform" var="productform"></c:url>
			<security:authorize access="hasRole('ROLE_ADMIN')">
			<a href="${productform}">Add Product</a>
			</security:authorize>
	
		</li>
		
		<li>
			<c:url value="cart-getcart" var="cart"></c:url>
			<a href="${cart}"><span class="glyphicon glyphicon-log-in"></span> Cart</a>
		</li>
		
		<c:url value="/j_spring_security_logout" var="logoutUrl"></c:url>
		    <c:if test="${pageContext.request.userPrincipal.name!=null }">
		    <li><a href="${logoutUrl}">Log Out</a></li>
		    </c:if>
	</ul>
</li>
</ul>
</div>
</nav>
</body>
</html>