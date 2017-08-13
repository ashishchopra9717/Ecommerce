<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
   
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/mainimage1.PNG" class="first slide" alt="first slide" style="width:100%;length:300%">  
    </div>

    <div class="item">
      <img class="second slide" src="images/scene.jpg" alt="second slide" style="width:100%;length:300%">
    </div>

    <div class="item"> 
      <img class="third slide" src="images/rockxsiri.PNG" alt="third slide" style="width:100%;length:300%">
    </div>
    
    <div class="item">
      <img class="fourth slide" src="images/avmain.jpg" alt="fourth slide" style="width:100%;length:300%">
    </div>
    
    <div class="item">
      <img class="fifth slide" src="images/Waterphone.jpeg" alt="fifth slide" style="width:100%;length:300%">
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
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>