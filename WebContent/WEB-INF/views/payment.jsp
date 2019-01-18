<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 
prefix="form" %>
<%@ page session="true" %>
<html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="">Phoenix</a>
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
<c:url var="addAction" value="/paymentdone" ></c:url>
      <form:form  action="${addAction}" >
     
      <button class="button">PAY</button>
      </form:form>
</body>
</html>