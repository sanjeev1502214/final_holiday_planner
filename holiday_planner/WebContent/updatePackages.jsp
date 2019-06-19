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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
#packages {
  font-family: "Assistant";
  font-size: 20px;
  border-collapse: collapse;
  width: 100%;
}

#packages td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#packages tr:nth-child(even){background-color: #f2f2f2;}

#packages tr:hover {background-color: #ddd;}

#packages th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align:center;
  background-color: #4CAF50;
  color: white;
}
</style>

</head>
<body>
<s:setDataSource driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/holidayplanner"
                           user="root" password="root" var="db" /> 
                           
<s:query var="rec" dataSource="${db}">
select * from sourcedestination;
</s:query>
                           

<br><br><br>

<center>
       <div style= "width:90% ">
       <%@ include file="headerAdmin.jsp" %>
       <br><br>
       <table id="packages">
              <tr>
              <center>
              <th>Package-ID</th>
              <th>Source</th>
              <th>Destination</th>
              <th>Cost</th>
              <th>Update</th>
              <th>Delete</th>
              </center>
              </tr>
          
              <tr>
              <c:forEach items="${rec.rows}" var="v">
<tr>          <td>${v.packageid}</td><td>${v.source}</td><td>${v.destination}</td><td>${v.cost}</td>

<td><center><a href="editPackages.jsp?packageid=${v.packageid}&source=${v.source}&destination=${v.destination}&cost=${v.cost}"> <i class="fa fa-edit" style="font-size:25px;color:green"></i> </center></a></td>
<td><center><a href="Deletepackages.jsp?packageid=${v.packageid}"><i class="fa fa-trash" style="font-size:25px;color:red"></i> </center></a></td>
</tr>
</c:forEach>
</tr>

              </table>
       
       
       </div>
</center>    


</body>
</html>
