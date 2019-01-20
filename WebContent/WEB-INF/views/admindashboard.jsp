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
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
  
  <script>
  
  

 var fromCity1 = document.getElementById("fromCity");
 var toCity1 = document.getElementById("toCity");
 var depTime = document.getElementById("departureTime").value;
 var arrTime = document.getElementById("arrivalTime").value;
 var Esp = document.getElementById("Esp");
 var Bsp = document.getElementById("Bsp");
 var day = document.getElementById("day");

 

function validateCity(){
  if(fromCity1 != toCity1) {
    fromCity.setCustomValidity("");
   // return true;
  } else {
    fromCity.setCustomValidity("Both the cities cannot be same");
    return false;
  }
}
</script>
</head>
<body>


  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">Phoenix</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                
                  <% if (session.getAttribute("email") == null) { %>
                    <li class="nav-item active">           
                        <a class="nav-link"  href="login">SignIn</a>
                    </li>
                    
                    <li class="nav-item active">
                        <a class="nav-link"  href="user">SignUp</a>
                    </li>
                    
                   <% } else {%>
                      
                    <li class="nav-item active">
                        <a class="nav-link"  href="#">Welcome <%=session.getAttribute("email")%></a>
                    </li>
                    
                    <li class="nav-item active">
                        <a class="nav-link"  href="user/logout">Logout</a>
                    </li>
                    
                    <% } %>
                </ul>
            </div>
        </div>
    </nav>


<c:url var="addAction" value="/flightdetails" ></c:url> 
<form:form  action="${addAction}" modelAttribute="flightdetail" style="width:550px; background-color:white; border-radius:3%">

<div class="card" style="width:90rem;">
<div class="card-header"><p class="text-dark"><strong>Add a Flight</strong></p></div>

	<div class="form-row">

	<div class="form-group mx-sm-3 mb-2">
     <strong>  From City:</strong> 
     <form:select path="fcity" class="form-control" id = "fromCity" >
    <form:options items="${cities}" />
    </form:select>
     <br>
     </div>
    
    <div class="form-group mx-sm-3 mb-2">
    <strong>  To City:</strong>
    <form:select path="tcity" class="form-control" id = "toCity" >
    <form:options items="${cities}" />
    </form:select>
     <br>
     </div>
     
     <div class="form-group mx-sm-3 mb-2">
     <strong>  Departure Time </strong>
    <form:input path="depttime" type="time" placeholder="Departure Time" class="form-control" id="departureTime" required="required" /><br>
    </div>
    
   <div class="form-group mx-sm-3 mb-2">
    <strong>  Arrival Time </strong>
    <form:input path="arivaltime" type="time" placeholder="Arrival Time" class="form-control" id="arrivalTime"  required="required" /><br>
    </div>
   
<div class="form-group mx-sm-3 mb-2">
   <strong>   Business Seat Price </strong>
    <form:input path="buisnessseatprice" type="text" placeholder="Seat Price" class="form-control" id="Bsp" required="required"/><br>
    </div>
    
    <div class="form-group mx-sm-3 mb-2">
    <strong>  Economy Seat Price </strong>
    <form:input path="economyseatprice" type="text" placeholder="Seat Price" class="form-control" id="Esp" required="required"/><br>
   </div>
   <div class="w-100"></div>
   <div class="form-group mx-sm-3 mb-2">
    <strong>  Operations Days: </strong><br>
     <label class="form-check-label" for="exampleCheck1">Monday</label>&nbsp;&nbsp; <form:checkbox   path="monday" value="T"/>
     <label class="form-check-label" for="exampleCheck2">Tuesday</label>&nbsp;&nbsp;  <form:checkbox  path="tuesday" value="T"/>
    <label class="form-check-label" for="exampleCheck3">Wednesday</label>&nbsp;&nbsp; <form:checkbox path="wednesday" value="T"/>
   <label class="form-check-label" for="exampleCheck4">Thursday</label>&nbsp;&nbsp; <form:checkbox path="thursday" value="T"/>
     <label class="form-check-label" for="exampleCheck5">Friday</label>&nbsp;&nbsp;  <form:checkbox   path="friday"   value="T"/>
   <label class="form-check-label" for="exampleCheck6">Saturday</label>&nbsp;&nbsp; <form:checkbox path="saturday"  value="T"/>
     <label class="form-check-label" for="exampleCheck7">Sunday</label>&nbsp;&nbsp;  <form:checkbox   path="sunday"   value="T"/> 
    </div>
    
    </div>
        
    <div align="left"> 
    <button  type="submit" class="btn btn-success"><b>Add Flight</b></button>
	</div>
    </div>
    
   
  
  
	
</form:form>

<p class="text-secondary">List Flights</p>


<c:if test="${!empty listFlight}">

	<table class="table" border="1">
	<thead class="thead-dark">
	<tr>
		<th scope="col">Flight ID</th>
		<th scope="col">From</th>
		<th scope="col">To</th>
		<th scope="col">Arrival</th>
		<th scope="col">Departure</th>
		<th scope="col">Business Price</th>
		<th scope="col">Economy Price</th>
		<th scope="col">Delete</th>
		
	</tr>
	</thead>

<c:forEach items="${listFlight}" var="flightdetail">
	<tr>
			<th scope="row">${flightdetail.id}</td>
			<td>${flightdetail.fcity}</td>
			<td>${flightdetail.tcity}</td>
			<td>${flightdetail.depttime}</td>
			<td>${flightdetail.arivaltime}</td>
			<td>${flightdetail.buisnessseatprice}</td>
			<td>${flightdetail.economyseatprice}</td>
			<td><a href="
			<c:url value='/remove/${flightdetail.id}' />" ><p class="text-danger">Delete</p></a>
			</td>
   </tr>			
</c:forEach>
	</table>
</c:if>

</body>
</html>