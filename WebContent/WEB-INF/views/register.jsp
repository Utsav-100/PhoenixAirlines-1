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
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

<script>

window.onload=function(){
	
var password = document.getElementById("password");
var confirm_password =document.getElementById("confirm_password");
password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;

function validatePassword(){
	
if(password.value != confirm_password.value) {
	
  confirm_password.setCustomValidity("Passwords Don't Match");
  
} 
else {
  confirm_password.setCustomValidity('');
}

}

$(document).ready(function(){
    $( "#dob" ).datepicker({
        dateFormat : 'mm/dd/yy',
        changeMonth : true,
        changeYear : true,
        yearRange: '-100y:c+nn',
        maxDate: '-1d'
    });
});

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
<form:form  action="${addAction}" modelAttribute="flightuser" style="width:550px; background-color:white; border-radius:3%" autocomplete="off">

  <div class="container" align="left" style="padding-left:60px; padding-top:30px">
  
    <form:radiobutton path="title" value="M" required="required"/>Male 
    <form:radiobutton path="title" value="F" required="required"/>Female 
   
    
    <br><br>
    
    <label for="fname">First Name</label>
    <form:input  path="firstName" type="text"  placeholder="Enter Firstname" required="required"/><br>
    
    <label for="lname">Last Name</label>
    <form:input path="lastName" type="text" placeholder="Enter Lastname" required="required" />
    
    <label for="pass">Password</label>
    <form:input path="password"  type="password" id="password" placeholder="Enter Password" required="required"/>
    
    <label for="cpass">Confirm Password</label>
    <input type="password"  placeholder="Confirm Password" id="confirm_password" required="required" ><br>
    
    <label for="E-mail">E-mail Address</label>
    <form:input path="email" type="email" placeholder="Enter Email" required="required" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" /><br>

    <label for="dob">Date Of Birth</label>
    <form:input path="dob" type="text" placeholder="Date of Birth" required="required" id="dob" autocomplete="false" /><br>
    
    <label for="contact">Contact</label>
    <form:input path="contact" type="tel" placeholder="Enter Contact Number" required="required" pattern="^\d{3}\d{3}\d{4}$" /><br>
       
      <div align="center"> 
    <button  type="submit" ><b>Sign Up</b></button>
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


