<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 
prefix="form" %>
<%@ page session="true" %>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link href="${pageContext.request.contextPath}/resources/css/mystyle.css" 
rel="stylesheet" />



<script type="text/javascript">

$(function () {
    $("#datepicker").datepicker({
        changeMonth: true,
        changeYear: true,
        yearRange: '-100:+0'
    });
});

var password = document.getElementById("password")
var confirm_password = document.getElementById("confirm_password")
function validatePassword(){
	  if(password.value != confirm_password.value) {
	    confirm_password.setCustomValidity("Passwords Don't Match");
	  } else {
	    confirm_password.setCustomValidity('');
	  }
	}


</script>





</head>



<body style="background-color:#f7f8f9" width="728px">
<div align="center">
<div align="center">
	<h1><font color="#4fa3e3">Sign up</font></h1>
	<br>
</div>

<c:url var="addAction" value="/user/add" ></c:url> 
<form:form  action="${addAction}" modelAttribute="flightuser" style="width:550px; background-color:white; border-radius:3%">

  <div class="container" align="left" style="padding-left:60px; padding-top:30px">
  
    <form:radiobutton path="title" value="M"/>Male 
    <form:radiobutton path="title" value="F"/>Female 
    <br><br>
    <label for="fname">First Name</label>
    <form:input  path="firstName" type="text"  placeholder="Enter Firstname"/><br>
    
    <label for="lname">Last Name</label>
    <form:input path="lastName" type="text" placeholder="Enter Lastname"  />
    
    <label for="pass">Password</label>
    <form:input path="password" type="password" id="password" placeholder="Enter Password" />
    
    <label for="cpass">Confirm Password</label>
    <input type="password" placeholder="Confirm Password" id="confirm_password"><br>
    
    <label for="E-mail">E-mail Address</label>
    <form:input path="email" type="email" placeholder="Enter Email" /><br>

    <label for="dob">Date Of Birth</label>
    <form:input path="dob" type="date" placeholder="Date of Birth" /><br>
    
    <label for="contact">Contact</label>
    <form:input path="contact" type="number" placeholder="Enter Contact Number" /><br>
       
      <div align="center"> 
    <button  type="submit"><b>Sign Up</b></button>
	  </div>
  
  </div>
	<div align="center" style="padding-bottom:20px">
		By clicking the Sign Up button, you agree our <br>
		<a href="#"><font color="#ee2e24">Terms & Conditions</font></a>, and <a href="#"><font color="#ee2e24">Privacy Policy.</font></a>
		
	</div>
	
</form:form>
</div>

</body>
</html>



<!-- 
This is user register page

<c:url var="addAction" value="/user/add" ></c:url>
 
<form:form  action="${addAction}" modelAttribute="flightuser">
 
<form:radiobutton path="title" value="M"/>Male 
<form:radiobutton path="title" value="F"/>Female 
                    
 <form:label path="firstName">firstname</form:label>
 <form:input type="text" path="firstName" required="required" autocomplete="off" />
 <br>
 <form:label path="lastName">lastName</form:label>
 <form:input type="text" path="lastName" required="required" autocomplete="off" />
 <br>
 <form:label path="password">password</form:label>
 <form:input type="text" path="password" required="required" autocomplete="off" />
 <br>
 <form:label path="email">email</form:label>
 <form:input type="text" path="email" required="required" autocomplete="off" />
 <br>
 <form:label path="dob">dob</form:label>
 <form:input type="date" path="dob" required="required" autocomplete="off" />
 <br>
 <form:label path="contact">contact</form:label>
 <form:input type="number" path="contact" required="required" autocomplete="off" />   
    
<input type="submit"  value="<spring:message 
					text="Add FlightUser"/>" />  
					  
 </form:form>
 -->
</body>
</html>