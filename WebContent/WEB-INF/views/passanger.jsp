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
<!-- Bootstrap core CSS and JQuery -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
        crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>
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