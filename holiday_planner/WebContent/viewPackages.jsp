<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Travel Right</title>
<link rel="icon" type="image/jpg" href="image/logo.jpg">
<link rel="stylesheet" href="./css/external.css" type = "Text/css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
header
{
top:0%;
position:fixed;
min-width:90%;
font-size:25px;
font-family:'assistant';
color:#333;
background-color : #98FB98;
padding: 10px 0;
}
footer
{
bottom:0%;
position:fixed;
min-width:90%;
font-size:15px;
font-family:'assistant';
color:#333;
background-color : #98FB98;
padding : 5px 0;
}
</style>
</head>
<body>
<center>
       <div style= "width:90% ">
       <%@ include file="headerUser.jsp" %> 
      


<article>
<!--                               Hill Station Package                                        -->
<br><br><br>
<div class="container">
  <h2 style="font-family:'assistant';">Ooty & Kodaikanal</h2>
  <div id="myCarousel1" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel1" data-slide-to="3" class="active"></li>
      <li data-target="#myCarousel1" data-slide-to="4"></li>
      <li data-target="#myCarousel1" data-slide-to="5"></li>
    </ol>


    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <a href="packages.jsp"><img src="image\HillStation\ooty1.png" alt="loading..." style="width:100%;"></a>
        <div class="carousel-caption">
          <h3>Ooty</h3>
        </div>
      </div>

      <div class="item">
        <a href="packages.jsp"><img src="image\HillStation\munnar1.jpg" alt="loading..." style="width:100%;"></a>
        <div class="carousel-caption">
          <h3>Munnar</h3>
         
        </div>
      </div>
    
      <div class="item">
        <a href="packages.jsp"><img src="image\HillStation\koda.jpg" alt="loading..." style="width:100%;"></a>
        <div class="carousel-caption">
          <h3>Kodaikanal</h3>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel1" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel1" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>



<!--                               Goa                                     -->
<br><br>
<div class="container">
  <h2 style="font-family:'assistant';">Goa</h2>
  <div id="myCarousel2" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel2" data-slide-to="1" class="active"></li>
      <li data-target="#myCarousel2" data-slide-to="2"></li>
      <li data-target="#myCarousel2" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <a href="packages.jsp"><img src="image\Goa\goa1.jpg" alt="loading..." style="width:100%;"></a>
        <div class="carousel-caption">
          <h3 style="font-color:'#000000';">Baga Beach</h3>
        </div>
      </div>

      <div class="item">
        <a href="packages.jsp"><img src="image\Goa\goa2.jpg" alt="loading..." style="width:100%;"></a>
        <div class="carousel-caption">
          <h3>Candle Night Dinner</h3>
         
        </div>
      </div>
    
      <div class="item">
        <a href="packages.jsp"><img src="image\Goa\goa3.jpg" alt="loading..." style="width:100%;"></a>
        <div class="carousel-caption">
  <h3>Mobor Beach</h3>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel2" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel2" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<!--                               Jaipur & Delhi                                  -->
<br><br>
<div class="container">
  <h2 style="font-family:'assistant';">Jaipur & Delhi</h2>
  <div id="myCarousel3" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel3" data-slide-to="1" class="active"></li>
      <li data-target="#myCarousel3" data-slide-to="2"></li>
      <li data-target="#myCarousel3" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <a href="packages.jsp"><img src="image\Jaipur\jaipur1.jpg" alt="loading..." style="width:100%;"></a>
        <div class="carousel-caption">
          <h3>Jal-Mahal</h3>
        </div>
      </div>

      <div class="item">
        <a href="packages.jsp"><img src="image\Jaipur\jaipur2.jpg" alt="loading..." style="width:100%;"></a>
        <div class="carousel-caption">
          
         <h3>Hawa Mahal</h3>
        </div>
      </div>
    
      <div class="item">
        <a href="packages.jsp"><img src="image\Jaipur\taj.jpg" alt="loading..." style="width:100%;"></a>
        <div class="carousel-caption">
              <h3>Taj-Mahal</h3>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel3" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel3" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<!--                               Himachal Pradesh                                  -->
<br><br>
<div class="container">
  <h2 style="font-family:'assistant';">Himachal Pradesh</h2>
  <div id="myCarousel4" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel4" data-slide-to="1" class="active"></li>
      <li data-target="#myCarousel4" data-slide-to="2"></li>
      <li data-target="#myCarousel4" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <a href="packages.jsp"><img src="image\Himachal\manali.jpg" alt="loading..." style="width:100%;"></a>
        <div class="carousel-caption">
          <h3>Manali</h3>
        </div>
      </div>

      <div class="item">
        <a href="packages.jsp"><img src="image\Himachal\spitivalley.png" alt="loading..." style="width:100%;"></a>
        <div class="carousel-caption">
          
         <h3>Spiti Valley</h3>
        </div>
      </div>
    
      <div class="item">
        <a href="packages.jsp"><img src="image\Himachal\boat.jpg" alt="loading..." style="width:100%;"></a>
        <div class="carousel-caption">
              <h3>Adventurous Water Ride</h3>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel4" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel4" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>




</article>


</body>
</html>

