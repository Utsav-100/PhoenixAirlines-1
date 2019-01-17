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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
 
</head>
<body>

Flight List will be displayed here.



    <table class="table" border="1">
	<thead class="thead-dark">
	<tr>
		<th width="80">Flight ID</th>
		<th width="120">From</th>
		<th width="120">To</th>
		<th width="60">Arrival</th>
		<th width="60">Departure</th>
		<th width="60">Business Price</th>
		<th width="60">Economy Price</th>
		<th width="60">Booking</th>

		
	</tr>
	</thead>

<c:forEach items="${listFlightOneWay}" var="flightdetail1">
	<tr>
			<td>${flightdetail1.id}</td>
			<td>${flightdetail1.fcity}</td>
			<td>${flightdetail1.tcity}</td>
			<td>${flightdetail1.depttime}</td>
			<td>${flightdetail1.arivaltime}</td>
			<td>${flightdetail1.buisnessseatprice}</td>
			<td>${flightdetail1.economyseatprice}</td>
			<td><a href="
			<c:url value='/book/${flightdetail1.id}' />" ><p class="text-danger">Book</p></a>
			</td>
			
   </tr>			
</c:forEach>
	</table>


</body>
</html>