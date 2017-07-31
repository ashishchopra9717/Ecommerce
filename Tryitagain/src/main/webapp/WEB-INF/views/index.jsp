<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<div class="container" style="background:blue">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
    <li data-target="#myCarousel" data-slide-to="5"></li>
    <li data-target="#myCarousel" data-slide-to="6"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/s8originalnew.jpg" class="first slide" alt="first slide">  
    </div>

    <div class="item">
      <img class="second slide" src="images/uhd.jpg" alt="second slide">
    </div>

    <div class="item">
      <img class="third slide" src="images/iphone7-2-1.jpg" alt="third slide">
    </div>
    
    <div class="item">
      <img class="fourth slide" src="images/s8new1.png" alt="fourth slide">
    </div>
    
    <div class="item">
      <img class="fifth slide" src="images/roomtv.jpg" alt="fifth slide">
    </div>
    
     <div class="item">
      <img class="sixth slide" src="images/s8offer.jpg" alt="sixth slide">
    </div>
    
     <div class="item">
      <img class="seventh slide" src="images/apple.jpg" alt="seventh slide">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</body>
</html>