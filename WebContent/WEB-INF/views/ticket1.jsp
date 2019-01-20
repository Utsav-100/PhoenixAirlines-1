<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 
prefix="form" %>
<%@ page session="true" %>
<html>
<head>
<script type="text/javascript">

function myscript()
{
window.print()
}
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/ticket.css" 
rel="stylesheet" />

</head>
<body>
<body>
<%String flightfrom=(String)session.getAttribute("flightfrom");%>
<%String flightto=(String)session.getAttribute("flightto"); %>

<div class="box">

    <div class="ticket">
      <span class="airline">Air Phoenix</span>
      <span class="airline airlineslip">Air Phoenix.co</span>
      <span class="boarding">Boarding pass</span>
      <div class="content">
          <!--from city-->
        <span class="jfk"><%=flightfrom.substring(0, 3).toUpperCase()%></span>
        <span class="plane"><?xml version="1.0" ?><svg clip-rule="evenodd" fill-rule="evenodd" height="60" width="60" image-rendering="optimizeQuality" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" viewBox="0 0 500 500" xmlns="http://www.w3.org/2000/svg"><g stroke="#222"><line fill="none" stroke-linecap="round" stroke-width="30" x1="300" x2="55" y1="390" y2="390"/><path d="M98 325c-9 10 10 16 25 6l311-156c24-17 35-25 42-50 2-15-46-11-78-7-15 1-34 10-42 16l-56 35 1-1-169-31c-14-3-24-5-37-1-10 5-18 10-27 18l122 72c4 3 5 7 1 9l-44 27-75-15c-10-2-18-4-28 0-8 4-14 9-20 15l74 63z" fill="#222" stroke-linejoin="round" stroke-width="10"/></g></svg></span>
        <!--to city-->
        <span class="sfo"><%=flightto.substring(0, 3).toUpperCase()%></span>
        
        
        <!--from city-->
        <span class="jfk jfkslip"><%=flightfrom.substring(0, 3).toUpperCase()%></span>
        <span class="plane planeslip"><?xml version="1.0" ?><svg clip-rule="evenodd" fill-rule="evenodd" height="50" width="50" image-rendering="optimizeQuality" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" viewBox="0 0 500 500" xmlns="http://www.w3.org/2000/svg"><g stroke="#222"><line fill="none" stroke-linecap="round" stroke-width="30" x1="300" x2="55" y1="390" y2="390"/><path d="M98 325c-9 10 10 16 25 6l311-156c24-17 35-25 42-50 2-15-46-11-78-7-15 1-34 10-42 16l-56 35 1-1-169-31c-14-3-24-5-37-1-10 5-18 10-27 18l122 72c4 3 5 7 1 9l-44 27-75-15c-10-2-18-4-28 0-8 4-14 9-20 15l74 63z" fill="#222" stroke-linejoin="round" stroke-width="10"/></g></svg></span>
        <!--to city-->
        <span class="sfo sfoslip"><%=flightto.substring(0, 3).toUpperCase()%></span>
        <div class="sub-content">
          <span class="watermark">Air Phoenix</span>
          <!--get passenger name-->
          <span class="name">PASSENGER NAME<br><span><%=session.getAttribute("passname2")%></span></span>

          <!--get flight id-->
          <span class="flight">FLIGHT N&deg;<br><span>PHNX<%=session.getAttribute("flightid")%></span></span>
          <span class="gate">GATE<br><span>11B</span></span>

          <!--seat no-->
          <span class="seat">SEAT<br><span><%=session.getAttribute("seat2")%></span></span>


          <!--get dep time and dep date-->
          <span class="boardingtime">BOARDING TIME<br><span><%=session.getAttribute("depttime")%>  <%=session.getAttribute("deptdate")%></span></span>
              
           <!--get flight id-->
           <span class="flight flightslip">FLIGHT N&deg;<br><span>PHNX-<%=session.getAttribute("flightid")%></span></span>
           <!--seat no-->
            <span class="seat seatslip">SEAT<br><span><%=session.getAttribute("seat2")%></span></span>
             <!--get passenger name-->
           <span class="name nameslip">PASSENGER NAME<br><span><%=session.getAttribute("passname2")%></span></span>
        </div>
      </div>
     <!-- <div class="barcode"></div>
      <div class="barcode slip"></div>-->
    </div>
  </div>
  <input type="button" class="button" value="print pdf" onclick="myscript()">
  <br>
  
   <% if ((int)session.getAttribute("adultcount")==3) { %>
 <button> <a href=goticket1>Next</a> </button>
   <%}%>

 <button> <a href="index.jsp">Home</a></button>
  </body>
</body>
</html>