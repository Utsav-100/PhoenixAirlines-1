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




    <% if ((int)session.getAttribute("adultcount")==1) { %>
    <br>
    <c:url var="addAction" value="/passengers" ></c:url>
    <form:form  action="${addAction}" >
    <select class="form-control" name="gender1">
	  <option>Male</option>
	  <option>Female</option>
    </select> 
    <label for="FirstName">First Name 1:</label><br>
    <input name="firstname1"  type="text" />
    
    <label for="LastName">Last Name 1:</label><br>
    <input name="lastname2" type="text" />
    <br>
    <button  type="submit"><b>Submit</b></button> 
    </form:form>
    <%}%>
    
    <% if ((int)session.getAttribute("adultcount")==2) { %>
    <br>
    <c:url var="addAction" value="/passengers" ></c:url>
    <form:form  action="${addAction}">
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
     <button  type="submit"><b>Submit</b></button> 
     </form:form>
    <%}%>
    
    
    <% if ((int)session.getAttribute("adultcount")==3) { %>
    <br>
    <c:url var="addAction" value="/passengers" ></c:url>
    <form:form  action="${addAction}" >
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
   
     <select class="form-control" name="gender3">
	  <option>Male</option>
	  <option>Female</option>
     </select>
    
    <label for="FirstName3">First Name 3:</label><br>
    <input name="firstname3" type="text" />
    
    <label for="LastName">Last Name 3:</label><br>
    <input name="lastname3" type="text" />
   
    
	
    <button  type="submit"><b>Submit</b></button> 
     </form:form>
    <%}%>
    
     
    
    
    

		







</body>
</html>