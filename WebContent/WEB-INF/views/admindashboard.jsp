<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 
prefix="form" %>
<%@ page session="false" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:url var="addAction" value="/flightdetails" ></c:url> 
<form:form  action="${addAction}" modelAttribute="flightdetail" style="width:550px; background-color:white; border-radius:3%">

     To City:
    <form:select path="tcity">
    <form:options items="${cities}" />
    </form:select>
     <br>
     
     From City:
     <form:select path="fcity">
    <form:options items="${cities}" />
    </form:select>
     <br>
    
   
     Arrival Time
    <form:input path="arivaltime" type="text" placeholder="Arival Time" /><br>
    
     Departure Time
    <form:input path="depttime" type="text" placeholder="Departure Time" /><br>


     Buisness Seat Price
    <form:input path="buisnessseatprice" type="text" placeholder=" Buisness Seat Price" /><br>
    
     Economy Seat Price
    <form:input path="economyseatprice" type="text" placeholder="Economy Seat Price" /><br>
   
     Operations Days: <br>
     Monday <form:checkbox   path="monday" value="T"/>
     Tuesday <form:checkbox  path="tuesday" value="T"/>
     Wednesday<form:checkbox path="wednesday" value="T"/>
     Thursday <form:checkbox path="thursday" value="T"/>
     Friday <form:checkbox   path="friday"   value="T"/>
     Saturday <form:checkbox path="saturday"  value="T"/>
     Sunday <form:checkbox   path="sunday"   value="T"/> 
    
    
       
    <div align="center"> 
    <button  type="submit"><b>Add Flight</b></button>
	</div>
  
  
	
</form:form>

<p>List Flights</p>


<c:if test="${!empty listFlight}">
	<table class="tg" border="1">
	<tr>
		<th width="80">Flight ID</th>
		<th width="120">To</th>
		<th width="120">From</th>
		<th width="60">Arrival</th>
		<th width="60">Departure</th>
		<th width="60">Business Price</th>
		<th width="60">Economy Price</th>
		<th width="60">Delete</th>
		
	</tr>

<c:forEach items="${listFlight}" var="flightdetail">
	<tr>
			<td>${flightdetail.id}</td>
			<td>${flightdetail.tcity}</td>
			<td>${flightdetail.fcity}</td>
			<td>${flightdetail.depttime}</td>
			<td>${flightdetail.arivaltime}</td>
			<td>${flightdetail.buisnessseatprice}</td>
			<td>${flightdetail.economyseatprice}</td>
			<td><a href="
			<c:url value='/remove/${flightdetail.id}' />" >Delete</a>
			</td>
   </tr>			
</c:forEach>
	</table>
</c:if>

</body>
</html>