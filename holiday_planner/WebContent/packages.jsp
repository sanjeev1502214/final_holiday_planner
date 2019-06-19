<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Travel Right</title>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
<link rel="icon" type="image/jpg" href="image/logo.jpg">
<link rel="stylesheet" href="./css/external.css" type = "Text/css"/>
  <link rel="stylesheet" href="/resources/demos/style.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
 
  <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
 


 
   <script>
 
  $(function() { 
		    $( "#datepicker" ).datepicker({ minDate: 0});
  });
  $(function() { 
	    $( "#datepicker1" ).datepicker({ minDate:0});
});
  </script>
  
  
<script type="text/javascript">  
function validate(){  
var firstname=document.b.firstname.value;  
var lastname=document.b.lastname.value;
var age=document.b.age.value;
var city=document.b.city.value; 
var address=document.b.address.value; 
var count=document.b.touristcount.value;
if (firstname==null || firstname==""){  
  alert("First Name can't be blank");  
  return false;  
}  
 if (lastname==null || lastname==""){  
         alert("Last Name can't be blank");  
         return false;  
}
 if (city==null || city==""){  
     alert("City Name can't be blank");  
     return false;  
}
 if (address==null || address==""){  
     alert("address can't be blank");  
     return false;  
}
if(age<=19)
       {
       alert("Age must be above 18");
       age.focus();
       return false;
       }

if(count>10)
	{
	alert("No. of Tourist must be less than 10");
	return false;
	}
	
	

}  

</script>
</head>
<body>

  

<center>
       <div style= "width:90% ">
        <%@ include file="headerUser.jsp" %> 
       
       <form action="TourDetails" method="post" onsubmit="return validate()" name="b">
       <br><br>
                                   <fieldset>
                     <legend><h1>Tour Packages</h1></legend>
                                  <table>
                                  <tr><td>First Name :</td><td><input type="text" name="firstname"  placeholder="First Name *"></td></tr>
                                  <tr><td>Last Name :</td><td><input type="text" name="lastname"  placeholder="Last Name *"></td></tr>
                                  <tr><td>Age :</td><td><input type="text" name="age" placeholder="Age *"></td></tr>
                                                                    
                           <tr><td>Gender :</td>
                               <td>     
                                  <select name ="gender">
                                        
                                                <option value="male">Male</option>
                                                <option value="female">Female</option>
                                         </select>
                                  </td></tr>
                                  
                                  <tr><td>Contact Number :</td><td><input type="text" name="contactnumber"  placeholder="Contact Number"></td></tr>
                                  <tr><td>Email-ID :</td><td><input type="text" name="email" readonly="readonly"  value="<%=s.getAttribute("ref") %>"></td></tr>
                                  <tr><td>Address :</td><td><input type="text" name="address" placeholder="Address"></td></tr>
                                  <tr><td>City :</td><td><input type="text" name="city"  placeholder="City *"></td></tr>
                                  <tr><td>Zip-Code :</td><td><input type="text" name="zipcode" required="required" placeholder="Zip Code *"></td></tr>
                                  <tr><td> Source :</td>
                                  <td>    
                                  <select name="source">
                                         		<option value="------">--------</option>
                                                <option value="Chennai">Chennai</option>
                                                <option value="Bangalore">Bangalore</option>
                                                  <option value="Hyderabad">Hyderabad</option>
                                                    <option value="Mumbai">Mumbai</option>
                                         </select>
                                  </td></tr>
                                  <tr><td> Destination :</td>
                                  <td>    
                                  <select name="destination">
                                         		<option value="------">--------</option>
                                                <option value="Goa">Goa</option>
                                                <option value="Himachal">Himachal</option>
                                                <option value="Jaipur">Jaipur</option>
                                                <option value="Ooty">Ooty</option>
                                                
                                         </select>
                                  </td></tr>
                                  <tr><td>Starting Date :</td><td><input type="text" id="datepicker" autocomplete="off" name="startingdate" required="required" placeholder="Starting Date *"></td></tr>
                                   <tr><td>Ending Date :</td><td><input type="text" id="datepicker1" autocomplete="off" name="enddate" required="required" placeholder="Ending Date *"></td></tr>
                                  <tr><td>No. of Tourists :</td><td><input type="number" name="touristcount" required="required" placeholder="No. of Tourists *"></td></tr>
                                  
                                  <tr><td><a href="viewPackages.jsp"><input type="button" value="Cancel"></a></td><td>
                                  
                                  <a href="billPreview.jsp?firstname=${firstname}&source=${source}&destination=${destination}&startingdate=${startingdate}&enddate=${enddate}&touristcount=${touristcount}"><input type="submit" value="Submit & Generate Bill"></a></td></tr>
                                  </table>
                                  </fieldset>
                           </form>

       
       
       
       
       </div>
</center>    
       


</body>
</html>
