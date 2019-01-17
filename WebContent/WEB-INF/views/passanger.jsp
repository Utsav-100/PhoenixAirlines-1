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
</head>
<body>
Passenger list



<c:url var="addAction" value="/passengers" ></c:url>
 <form:form  action="${addAction}" >

   
    <br>
    
    <select class="form-control" name="gender1">
	  <option>Male</option>
	  <option>Female</option>
     </select>
    
    <label for="FirstName">First Name 1:</label><br>
    <input name="firstname1"  type="text" />
    
    <label for="LastName">Last Name 1:</label><br>
    <input name="lastname2" type="text" />
    
    
    <br>
    

     <select class="form-control" name="gender2">
	  <option>Male</option>
	  <option>Female</option>
     </select>
    
    <label for="FirstName">First Name 2:</label><br>
    <input name="firstname2" type="text" />
    
    <label for="LastName">Last Name 2:</label><br>
    <input name="lastname2" type="text" />
    
    <br>
   
	
    <button  type="submit"><b>Submit</b></button> 
    
</form:form>
		







</body>
</html>