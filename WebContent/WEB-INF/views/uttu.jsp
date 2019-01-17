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
  
  
  <link rel="stylesheet" href="style.css">
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
    return true;
  } else {
    fromCity.setCustomValidity("Both the cities cannot be same");
    return false;
  }
}
</script>

</head>
<body>


<c:url var="addAction" value="/flightdetails"  ></c:url> 
<form:form   onsubmit="validateCity()" action="${addAction}" modelAttribute="flightdetail" style="width:550px; background-color:white; border-radius:3%">
	
	<div class="card" style="width: 100rem;">
    <div class="card-header"><p class="text-dark"><strong>Add a Flight</strong></p></div>
    
    <div class="card-body">
    
       <div class="form-inline">     
  <strong>   To City: </strong>	  &nbsp;&nbsp;&nbsp;
      <div class="row">
     <div  class="form-group col-md-4">
    <form:select path="tcity" class="form-control" id = "toCity" onchange="validateCity()" >
    <form:options items="${cities}" />
    </form:select>
     </div></div>
     <br>
     &nbsp;&nbsp;&nbsp;
     
    <strong> From City: </strong>	  &nbsp;&nbsp;&nbsp;
      <div class="row">
     <div  class="form-group col-md-4" >
     <form:select path="fcity" class="form-control" id = "toCity" onchange="validateCity()" >
    <form:options items="${cities}" />
    </form:select>
    </div></div>
     <br>  &nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;
   <div class="form-group row">
    <strong> Arrival Time: </strong>	  &nbsp;&nbsp;&nbsp;
      <div class="row">
      <div class="col">
     
      
    <form:input path="arivaltime" type="time" placeholder="Arival Time" class="form-control" id="arrivalTime"  /><br>
     </div>
    </div>
    	</div>&nbsp;&nbsp;&nbsp;
    
    	  <div class="form-group row">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <strong>Departure Time: </strong>	  &nbsp;&nbsp;&nbsp;
      <div class="row">
      <div class="col">
     
    <form:input path="depttime" type="time" placeholder="Departure Time" class="form-control" id="departureTime" /><br>
   </div>
	</div>
	</div>  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;
	<br>
 <div class="w-100"></div>
    <strong> Business Seat Price: 	</strong>  &nbsp;&nbsp;&nbsp;
      <div class="row">
      <div class="col">
      
    <form:input path="buisnessseatprice" type="text" placeholder=" Seat Price" class="form-control" id="Bsp" /><br>
    </div>
    <strong></div>&nbsp;&nbsp;&nbsp;
     Economy Seat Price: </strong>	  &nbsp;&nbsp;&nbsp;
      <div class="row">
      <div class="col">
      
    <form:input path="economyseatprice" type="text" placeholder=" Seat Price" class="form-control" id="Esp"/><br>
   </div>
   </div>
    <div class="w-100"></div>
    <strong> Operations Days:</strong><br> <br><div class="w-100"></div>
      <div class="row">
      <div class="form-check">
     <label class="form-check-label" for="exampleCheck1">Mon</label>&nbsp;&nbsp; <form:checkbox   path="monday" value="T" class="form-check-input" id="exampleCheck1"   />
     <label class="form-check-label" for="exampleCheck2">Tues</label>&nbsp;&nbsp; <form:checkbox  path="tuesday" value="T" class="form-check-input" id="exampleCheck2"/>
      <label class="form-check-label" for="exampleCheck3">Wed</label>&nbsp;&nbsp;<form:checkbox path="wednesday" value="T" class="form-check-input" id="exampleCheck3"/>
     <label class="form-check-label" for="exampleCheck4">Thurs</label>&nbsp;&nbsp; <form:checkbox path="thursday" value="T" class="form-check-input" id="exampleCheck4"/>
      <label class="form-check-label" for="exampleCheck5">Fri</label>&nbsp;&nbsp;<form:checkbox   path="friday"   value="T" class="form-check-input" id="exampleCheck5"/>
     <label class="form-check-label" for="exampleCheck6">Sat</label>&nbsp;&nbsp; <form:checkbox path="saturday"  value="T" class="form-check-input" id="exampleCheck6"/>
     <label class="form-check-label" for="exampleCheck7">Sun</label>&nbsp;&nbsp; <form:checkbox   path="sunday"   value="T" class="form-check-input" id="exampleCheck7"/> 
    </div>
    </div>
      </table>
</div>
 </div>
 </div>
 
    <div align="right"> 
    <button  type="submit" class="btn btn-primary"  ><b>Add Flight</b></button>
    
	</div>
 
  
	</div>

</form:form>
</div>

<p class="text-secondary">List Flights</p>
 <table class="table table-bordered table-condensed">


<c:if test="${!empty listFlight}">
	<table class="table" border="1">
	<thead class="thead-dark">
	<tr>
		<th scope="col">Flight ID</th>
		<th scope="col">To</th>
		<th scope="col">From</th>
		<th scope="col">Arrival</th>
		<th scope="col">Departure</th>
		<th scope="col">Business Price</th>
		<th scope="col">Economy Price</th>
		<th scope="col">Delete</th>
		
	</tr>
	  </thead>
	

<c:forEach items="${listFlight}" var="flightdetail">
<tbody>
	<tr>
			<th scope="row">${flightdetail.id}</td>
			<td>${flightdetail.tcity}</td>
			<td>${flightdetail.fcity}</td>
			<td>${flightdetail.depttime}</td>
			<td>${flightdetail.arivaltime}</td>
			<td>${flightdetail.buisnessseatprice}</td>
			<td>${flightdetail.economyseatprice}</td>
			<td><a href= " <c:url value= '/remove/${flightdetail.id}' />" ><p class="text-danger">Delete</p></a>
   </tr>
   			</tbody>
</c:forEach>
	  </table>
	
</c:if>

</body>
</html>