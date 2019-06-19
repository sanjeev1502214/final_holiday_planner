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

<style>
#customers {
  font-family: "Assistant";
  font-size: 20px;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px; 
  text-align:justify;
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
select * from registeration;
</s:query>



<center>
       <div style= "width:90% ">
       <%@ include file="headerAdmin.jsp" %>
       <br><br><br>
      
       <table id="customers">
              <tr>
              <th>First Name</th>
              <th>Last Name</th>
              <th>Age</th>
              <th>Gender</th>
              <th>Contact Number</th>
              <th>Email-ID</th>
              <th>Password</th>
              </tr>
              
              <tr>
              <c:forEach items="${rec.rows}" var="v">
				<tr>          
				<td>${v.firstname}</td>
				<td>${v.lastname}</td>
				<td>${v.age}</td>
				<td>${v.gender}</td>
				<td>${v.contactnumber}</td>
				<td>${v.email}</td>
				<td>${v.password}</td>
				</tr>
			  </c:forEach>
  	</table>
         
       
       </div>
</center>    
</body>
</html>
