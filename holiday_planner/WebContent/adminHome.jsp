<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Travel Right</title>
<link rel="icon" type="image/jpg" href="image/logo.jpg">

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

<center>
       <div style= "width:90% ">
       <%@ include file="headerAdmin.jsp" %>
      
              <br><br><br>
              
              
             <table id="customers">
             
              <tr><td> To create new packages</td><td><a href="addPackages.jsp">New Packages</a></td></tr>
              
              <tr><td> To view and update existing packages</td><td><a href="updatePackages.jsp">Update Packages</a></td></tr>
              
              <tr><td> To view registered users</td><td><a href="viewUsers.jsp">View Users</a></td></tr>
              
              <tr><td> To change your password</td><td><a href="changePassword.jsp">Change Password</a></td></tr>
              
             
       
       
       </table>
       
       </div>
</center>    

</body>
</html>
