<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
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
                     int packageid=Integer.parseInt(request.getParameter("packageid"));
                     String source=request.getParameter("source");
              String destination=request.getParameter("destination");
              int cost=Integer.parseInt(request.getParameter("cost"));
%>
<center>
       <div style= "width:90% ">
       <%@ include file="headerAdmin.jsp" %>
       
       <form action="UpdatePackages" method="post">
       
       <br><br><br>
                           <fieldset>
                                         <legend><h2>Edit Package</h2></legend>
                                  <table>
                                  <tr><td><input value=<%=packageid%> readonly="readonly"  type="number" name="packageid" required="required" placeholder="Package-Id"></td></tr>
                                  <tr><td><input value=<%=source%>  type="text" name="source" required="required" placeholder="Source"></td></tr>
                                  <tr><td><input value=<%=destination%> type="text" name="destination" required="required" placeholder="Destination"></td></tr>
                                  <tr><td><input value=<%=cost%> type="number" name="cost" required="required" placeholder="Cost"></td></tr>
                                  <tr><td><input type="submit" value="Update Package"></td></tr>
                                  </table>
                                  </fieldset>
                           </form>
       
       </div>
</center>    

</body>
</html>
