<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 
prefix="form" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Flight List will be displayed here.
<p>List Flights</p>



	<table class="tg" border="1">
	<tr>
		<th width="80">Flight ID</th>
		<th width="120">From</th>
		<th width="120">To</th>
		<th width="60">Arrival</th>
		<th width="60">Departure</th>
		<th width="60">Business Price</th>
		<th width="60">Economy Price</th>

		
	</tr>

<c:forEach items="${listFlightOneWay}" var="flightdetail1">
	<tr>
			<td>${flightdetail1.id}</td>
			<td>${flightdetail1.fcity}</td>
			<td>${flightdetail1.tcity}</td>
			<td>${flightdetail1.depttime}</td>
			<td>${flightdetail1.arivaltime}</td>
			<td>${flightdetail1.buisnessseatprice}</td>
			<td>${flightdetail1.economyseatprice}</td>
			
   </tr>			
</c:forEach>
	</table>


</body>
</html>