<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Travel Right</title>
<link rel="icon" type="image/jpg" href="image/logo.jpg">
<link rel="stylesheet" href="./css/external.css" type = "Text/css"/>
</head>
<body>

<%
 String firstname = request.getParameter("firstname");
String source = request.getParameter("source");
String destination = request.getParameter("destination");
String startingdate = request.getParameter("startingdate");
String enddate = request.getParameter("enddate");
Long nooftourists = Long.parseLong(request.getParameter("touristcount"));



%>

<center>
       <div style= "width:90% ">
       <%@ include file="headerUser.jsp" %> 
       <br><br>
                                   <fieldset>
                    				 <legend>Bill</legend>
                                  <table>
                                  <tr><td>First Name :</td><td><%=firstname%></td></tr>
                                  <tr><td>Source :</td><td> <%=source%></td></tr>
                                  <tr><td>Destination :</td><td> <%=destination%></td></tr>
                                  <tr><td>Starting Date :</td><td><%=startingdate%> </td></tr>
                                  <tr><td>End Date :</td><td><%=enddate%> </td></tr>
                                  <tr><td>No. of Tourists :</td><td><%=nooftourists%></td></tr>
                                  <tr><td>Total Cost :</td><td><%=request.getAttribute("totalcost")%></td></tr>  
                                                                           
                                  <tr><td><a href="viewPackages.jsp"><input type="button" value="Cancel"></a></td>
                                  <td><a href ="paymentPage.jsp"><input type="submit" value="Proceed to Payment"></a></td></tr>
                                  </table>
                                  </fieldset>
       
       </div>
</center>    






</body>
</html>
