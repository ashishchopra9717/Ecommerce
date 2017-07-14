<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/stylesheet.css">
<title>Homepage</title>
</head>
<body>
<!-- include javascript, jQuery FIRST -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

 <nav class="navbar navbar-default" >
  <div class="container">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapsed" data-target="#collapse-example" aria expanded="false">

<span class="sr-only">Toggle Navigation</span>

<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div>
<div class="navbar-header">
<a class=""navbar-brand" href="#">
<img src="/images/Envirotas.PNG" alt="GO" height="30px" width="30" style="margin-top:10px";>
</a>
</div>

<div class="collapse navbar-collapse" id="collapse-example">

<ul class="nav navbar-nav" style="clear:left;">
	<li class="active">
		<a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a>
	</li>
<span class="sr-only">You are in Homepage</span>

<li>
		<a href="aboutus.jsp">About Us</a>
	</li>
<span class="sr-only">About Us</span>

<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<strong class="caret"></strong></a>

		<ul class="dropdown-menu">
		<li>
			<a href="#"><span class="glyphicon glyphicon-grain">Organic Food</a>
		</li>
		<li>
			<a href="#">Health & Wellness</a>
		</li>
		<li>
			<a href="#">Beauty Care</a>
		</li>
		<li class="divider"></li>
		
		<li class="dropdown-header">More Services</li>
		<li>
			<a href="#">Home & Garden</a>
		</li>
		<li>
			<a href="#">Clothing</a>
		</li>
		<li>
			<a href="#">Baby & Kids</a>
		</li>
	</ul>
</li>


<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Offers<strong class="caret"></strong></a>

		<ul class="dropdown-menu">
		<li>
			<a href="#">Web-Design</a>
		</li>
		<li>
			<a href="#">Web Development</a>
		</li>
		<li>
			<a href="#">Web Development</a>
		</li>
		<li class="divider"></li>
		
		<li class="dropdown-header">More Services</li>
		<li>
			<a href="#">Web Creation</a>
		</li>
	</ul>
</li>


<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Services <strong class="caret"></strong></a>

		<ul class="dropdown-menu">
		<li>
			<a href="#">Web-Design</a>
		</li>
		<li>
			<a href="#">Web Development</a>
		</li>
		<li>
			<a href="#">Web Development</a>
		</li>
		<li class="divider"></li>
		
		<li class="dropdown-header">More Services</li>
		<li>
			<a href="#">Web Creation</a>
		</li>
	</ul>
</li>
</ul>


<form class="navbar-form pull-left">

<input type="text" class="form-control" placeholder="Search the object" style="width: 200px;">
<button type="submit" class="btn-btn-default "><span class="glyphicon glyphicon-search"></span></button>
</form>

<ul class="nav navbar-nav navbar-right">
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
</div>
</nav>
</body>
</html>