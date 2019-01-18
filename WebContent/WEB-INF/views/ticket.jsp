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
</head>
<body>
Ticket will be printed here........
<input type="button" value="print pdf" onclick="myscript()">
</body>
</html>