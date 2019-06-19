<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Travel Right</title>
<link rel="icon" type="image/jpg" href="image/logo.jpg">
<link rel="stylesheet" href="./css/external.css" type = "Text/css"/>
</head>
<body>
<center>
       <div style= "width:90%">
       <%@ include file="headerAdmin.jsp" %>
       
       <form action="Addpackages" method="post">
       <br><br><br>
                           <fieldset>
                                         <legend><h2>New Package</h2></legend>
                                  <table>
                                  <tr><td><input type="text" name="packageid" required="required" placeholder="Package ID"></td></tr>
                                  <tr><td><input type="text" name="source" required="required" placeholder="Source"></td></tr>
                                  <tr><td><input type="text" name="destination" required="required" placeholder="Destination"></td></tr>
                                  <tr><td><input type="text" name="cost" required="required" placeholder="Cost"></td></tr>
                                  <tr><td><input type="submit" value="Add Package"></td></tr>
                                  </table>
                                  </fieldset>
                           </form>
       
       </div>
</center>    

</body>
</html>
