<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Travel Right</title>
<link rel="icon" type="image/jpg" href="image/logo.jpg">


<script typr="text/javascript">
window.history.forward();
function noBack()
{
	window.history.forward();
	}
	</script>

</head>
<body onload="noBack();" onpageshow="if (event.persisted)noBack();" onunload=" ">
<center>
	<div style= "width:90% ">
	<%@ include file="header.jsp" %>
	<br><br><br>
		<div class="row">
  			<div class="column1" style="background-color:#ffffff;">
    			<h2>About Us</h2>
    			<p align="justify">		Travel Right is the website built for planning your trip.
    			 Without leaving our site, you can add transportation, lodging, sights.It is very easy to use.
    			 Experience the most visual and collaborative workspace to plan travel itineraries. Coordinate anywhere, with anyone, at anytime.
    			<br><br><br>
    			Also, Travel Right is the best at visualizing and planning multi-day and multi-city trips (anywhere in the India).
    			 Travel Planner is an online trip planner that makes it easy to plan every single step of your trip including travel between cities.
    			 It also provides a detailed plan of attractions you will see at the various destinations. 
    			 The plan is completely customizable with options you choose.
    			 We ensure that you get the most out of your vacation. 
    			</p>
    			<br><br><br>
    			<h2>Contact</h2>
    			<address align="justify">
    			
    			<b>Phone Number</b> : +91 8903180760
                <br>    		
    			<b>Email-ID</b>     : travelright@gmail.com
    			<br>
    			<b>Address</b> :  No.18, Alpha Towers, 8th Street,
    			              	  Adyar,
    			                  Chennai-600028. 
    			</address>	
  			</div>
  			
  			
  			<div class="column2" >
  			<img src="image/col.png" alt="Not found" style="width:75%">
    		</div>
		</div>
  
	</div>
	
</center>
</body>
</html>