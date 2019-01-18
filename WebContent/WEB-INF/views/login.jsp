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


<link href="${pageContext.request.contextPath}/resources/css/mystyle.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/WEB-INF/js/myjs.js"> </script>




</head>



<body style="background-color:#f7f8f9" width="728px">
<div align="center">
<div align="center">
	<h1><font color="#4fa3e3">SignIn</font></h1>
	<br>
</div>

<c:url var="addAction" value="/regtologin" ></c:url> 
<form:form  action="${addAction}" modelAttribute="loginuser" style="width:550px; background-color:white; border-radius:3%">

  <div class="container" align="left" style="padding-left:60px; padding-top:30px">
  
   
    <label for="E-mail">Email </label><br>
    <form:input  path="email" type="email"  placeholder="Enter Email"/><br>
    
   
    <label for="pass">Password</label>
    <form:input path="password" type="password" placeholder="Enter Password" /></br>
    
       
    <div align="center"> 
    <button  type="submit"><b>SignIn</b></button>
	</div>
  
  
	
</form:form>
</div>

</body>
</html>




</body>
</html>