<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Travel Right</title>
<link rel="icon" type="image/jpg" href="image/logo.jpg">

<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=number], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}


</style>


</head>
<body>

<center>
	<div style= "width:90% " >
	<%@ include file="header1.jsp" %>
	<br><br><br>
	<div><h1>Welcome to TRAVEL RIGHT!</h1></div>
	<div class="row1">
	
  		    				
    				<form action="Admin" method="post">
    				<fieldset>
 						 <legend><h2> Admin Log-In</h2></legend>
    					<table>
    					<tr><td><input type="text" name="name" required="required" placeholder="Name"></td></tr>
    					<tr><td><input type="password" name="password" required="required" placeholder="Password"></td></tr>
    					<tr><td><input type="submit" value="Login"></td></tr>
    					</table>
    					</fieldset>
    				</form>
    				
  			</div>
  			
  	</div>
	
	</center>

</body>
</html>
  			