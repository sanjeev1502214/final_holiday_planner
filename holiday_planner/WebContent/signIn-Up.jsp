<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Travel Right</title>
<link rel="icon" type="image/jpg" href="image/logo.jpg">

<link rel="stylesheet" href="./css/external.css" type = "Text/css"/>
<script type="text/javascript">  
function validate(){  
var firstname=document.a.firstname.value;  
var lastname=document.a.lastname.value;
var age=document.a.age.value;
var password=document.a.password.value; 
var password1=document.a.password1.value;
var email=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
var b=email.test(document.a.email.value);
  
if (firstname==null || firstname==""){  
  alert("First Name can't be blank");  
  return false;  
}  
 if (lastname==null || lastname==""){  
         alert("Last Name can't be blank");  
         return false;  
}
if(age<=19)
       {
       alert("Age must be above 18");
       age.focus();
       return false;
       }
       
if(b==false)
{
alert("Please Enter a valid Mail ID");
document.a.email.focus();
return false;
}


         
if(password.length<8){  
  alert("Error-Password\nPassword must be at least 8 characters long");  
  return false;  
}  
  

if(password==password1){  
       return true;  
       }  
       else{  
       alert("Password must be same!");  
       return false;  
       }  


}  

</script>



</head>
<body>



<center>
       <div style= "width:90% " >
       <%@ include file="header.jsp" %>
       <br><br><br>
       
       <div><h1>Welcome to TRAVEL RIGHT!</h1></div>
       <div class="row1">
       
                    <div class="column1" >
                    
                           
                           <form action="Login" method="post">
                           <%
String info=(String)request.getAttribute("msg");
if(info!=null){%>
       <div style="color: red"><%=info%></div>
<%}
%>
                           <fieldset>
                                         <legend><h2>Sign-In</h2></legend>
                                  <table>
                                  <tr><td><input type="text" name="email" required="required" placeholder="Email-ID *"></td></tr>
                                  <tr><td><input type="password" name="password" required="required" placeholder="Password *"></td></tr>
                                  <tr><td><input type="submit" value="Login"></td></tr>
                                  </table>
                                  </fieldset>
                           </form>
                           <br><br>
                           <h2>Instructions</h2><br>
                           <ul>
                           <li align="justify">The fields with * are mandatory.</li><br>
                           <li align="justify">Please provide the valid information in the field(s).</li><br>
                           <li align="justify">Password must be atleast 8-15 characters.</li><br>
                           </ul>
                           
                    </div>
                    
                    
                    <div class="column2">
                           
                                   
                                   <form action="Register" method="post" onsubmit="return validate()" name="a">
                                   <%
										String info1=(String)request.getAttribute("msg1");
										if(info1!=null){%>
     									<div style="color: green"><%=info1%></div>
										<%}
									%>
                                   <fieldset>
                     <legend><h1>Sign-Up</h1></legend>
                                  <table>
                                  <tr><td><input type="text" name="firstname"  placeholder="First Name *"></td></tr>
                                  <tr><td><input type="text" name="lastname"  placeholder="Last Name *"></td></tr>
                                  <tr><td><input type="number" name="age"  placeholder="Age *"></td></tr>                                  
                           <tr><td>     
                                  <select name="gender">
                                         
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                         </select>
                                  </td></tr>
                                  
                                  <tr><td><input type="text" name="contactnumber"  placeholder="Contact Number"></td></tr>
                                  <tr><td><input type="text" name="email" placeholder="Email-ID *"></td></tr>
                                  <tr><td><input type="password" name="password" placeholder="Password *"></td></tr>
                                  <tr><td><input type="password" name="password1"  placeholder="Confirm Password *"></td></tr>
                                  <tr><td><input type="submit" value="Submit"></td></tr>
                                  </table>
                                  </fieldset>
                           </form>
                    </div>
       </div>
       
       
       </div>
</center>

</body>
</html>
