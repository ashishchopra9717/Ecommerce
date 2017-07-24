<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!-- Angular Js -->
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<!-- JQuery -->
<script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css">

<title>Homepage</title>
</head>
<body>

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

<ul class="nav navbar-nav" style="clear:left;">
<img src="images/logo.png" alt="GO" height="100px" width="300px" style="margin-top:10px" align="center">	
	<li class="active">
		<a href="index"><span class="glyphicon glyphicon-home"></span> Home</a>
	</li>
<span class="sr-only">You are in Homepage</span>

<li>
		<a href="aboutus">About Us</a>
	</li>
<span class="sr-only">About Us</span>

<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-phone"> Mobile<strong class="caret"></strong></a>

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
	<a class="dropdown-toggle" data-toggle="dropdown" href="#">TV&AV<strong class="caret"></strong></a>

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
	<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-sd-video"> MEMMORY&STORAGE<strong class="caret"></strong></a>

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
</ul>


<form class="navbar-form pull-left">

<input type="text" class="form-control" placeholder="Search the object" style="width: 200px;">
<button type="submit" class="btn-btn-default "><span class="glyphicon glyphicon-search"></span></button>
</form>

<ul class="nav navbar-nav navbar-right">
	<li><input type="button" class="btn btn-info" value="View Products" onclick="location.href = 'getallproducts';"></li>
	<li><input type="button" class="btn btn-warning" value="Add Product" onclick="location.href = 'getproductform';"></li>
	<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> My Account<strong class="caret"></strong></a>

		<ul class="dropdown-menu">
		<li>
			<a href="#"><span class="glyphicon glyphicon-refresh"></span></span> Update Profile</a>
		</li>
		<li>
			<a href="registration.jsp"><span class="glyphicon glyphicon-inbox"></span> Registration</a>
		</li>
		<li>
			<a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a>
		</li>
	</ul>
</li>
</ul>
</div>
</nav>
</body>
</html>