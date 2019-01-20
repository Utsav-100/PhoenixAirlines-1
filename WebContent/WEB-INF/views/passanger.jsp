<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 
prefix="form" %>
<%@ page session="true" %>
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/addpassenger.css"> 

 <!-- Meta tags -->
      <!-- font-awesome icons -->
      <link href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!--stylesheets-->
      <link href="${pageContext.request.contextPath}/resources/css/addpassenger.css" rel='stylesheet' type='text/css' media="all">
      <!--//style sheet end here-->
      <link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">

<meta charset="ISO-8859-1">
<title>Add Details</title>
</head>
<body>


    <% if ((int)session.getAttribute("adultcount")==1) { %>
    <br>
    <c:url var="addAction" value="/passengers" ></c:url>
    <form:form  action="${addAction}" >
     <h1 class="header-w3ls">
         Add Passenger Details
      </h1>
      <div class="mid-cls">
         <form action="#" method="post">
            <div class="main">
               <div class="icon-head-wthree">
                  <div class="images-headder">
                     <div class="wrap-custom-file">
                        <input type="file" name="image1" id="image1" accept=".gif, .jpg, .png" />
                        <label  for="image1">
                        <span><img src="${pageContext.request.contextPath}/resources/img/user.png" alt="" class="image-fluid"></span>
                    
                        </label>
                     </div>
                  </div>
                  <div class="personal-info">
                     <p>Gender</p>
                     <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender1" value="M" checked="">
                        <label class="form-check-label">
                        Male
                        </label>
                     </div>
                     <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender1" value="F" checked="">
                        <label class="form-check-label">
                        Female
                        </label>
                     
                     </div>
                    
                  </div>
               </div>
               <div class="form-left-to-w3l">
                  <input type="text" name="firstname1" placeholder="Name" required="required">
                  <div class="clear"></div>
               </div>
               <div class="form-left-to-w3l">
                  <input type="text" name="lastname1" placeholder="Last Name" required="required">
                  <div class="clear"></div>
               </div>
              	<div class="btnn ">
                  <button type="submit" class = "btn btn-info .btn-sm" style="background:#000000 !important;border: 1px solid black !important;  margin-left:auto !important; margin-right:auto !important; display:block !important;  margin-top:5% !important; margin-bottom:0% !important">Submit</button><br>
                  <div class="clear"></div>
       </div>
               
            </div>
         </form>
      </div>

    </form:form>
    <%}%>
    
    <% if ((int)session.getAttribute("adultcount")==2) { %>
    <br>
    
    <h1 class="header-w3ls">
         Add Passenger Details
      </h1>
      <div class="mid-cls">
        <c:url var="addAction" value="/passengers" ></c:url>
    <form:form  action="${addAction}" >
            <div class="main">
               <div class="icon-head-wthree">
                  <div class="images-headder">
                     <div class="wrap-custom-file">
                        <input type="file" name="image1" id="image1" accept=".gif, .jpg, .png" />
                        <label  for="image1">
                        <span><img src="${pageContext.request.contextPath}/resources/img/user.png" alt="" class="image-fluid"></span>
                    
                        </label>
                     </div>
                  </div>
                  <div class="personal-info">
                     <p>Gender</p>
                     <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender1" value="option1" checked="">
                        <label class="form-check-label">
                        Male
                        </label>
                     </div>
                     <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender1" value="option2" checked="">
                        <label class="form-check-label">
                        Female
                        </label>
                     </div>
                  </div>
               </div>
               <div class="form-left-to-w3l">
                  <input type="text" name="firstname1" placeholder="Name" required="required">
                  <div class="clear"></div>
               </div>
               <div class="form-left-to-w3l">
                  <input type="text" name="lastname1" placeholder="Last Name" required="required">
                  <div class="clear"></div>
               </div>
              
               
            </div>
        
      </div>


      <br>
      <br>


      <div class="mid-cls">
        
            <div class="main">
               <div class="icon-head-wthree">
                  <div class="images-headder">
                     <div class="wrap-custom-file">
                        <input type="file" name="image1" id="image1" accept=".gif, .jpg, .png" />
                        <label  for="image1">
                        <span><img src="${pageContext.request.contextPath}/resources/img/user.png" alt="" class="image-fluid"></span>
                     
                        </label>
                     </div>
                  </div>
                  <div class="personal-info">
                     <p>Gender</p>
                     <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender2" value="option3" checked="" required="required">
                        <label class="form-check-label">
                        Male
                        </label>
                     </div>
                     <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender2" value="option4" checked="" required="required">
                        <label class="form-check-label">
                        Female
                        </label>
                     </div>
                  </div>
               </div>
               <div class="form-left-to-w3l">
                  <input type="text" name="firstname2" placeholder="First Name" required="required">
                  <div class="clear"></div>
               </div>
               <div class="form-left-to-w3l">
                  <input type="text" name="lastname2" placeholder="Last Name" required="required">
                  <div class="clear"></div>
               </div>
              <div class="btnn ">
                  <button type="submit" class = "btn btn-info .btn-sm" style="background:#000000 !important;border: 1px solid black !important;  margin-left:auto !important; margin-right:auto !important; display:block !important;  margin-top:5% !important; margin-bottom:0% !important">Submit</button><br>
                  <div class="clear"></div>
              
            </div>
       
      </div>
      </div>
   </form:form>

      <br>
      <br>

 
    <%}%>
    
    
    <% if ((int)session.getAttribute("adultcount")==3) { %>
    <br>
    
    <h1 class="header-w3ls">
         Add Passenger Details
      </h1>
     
         <c:url var="addAction" value="/passengers" ></c:url>
    	  <form:form  action="${addAction}" >
    	   <div class="mid-cls">
            <div class="main">
               <div class="icon-head-wthree">
                  <div class="images-headder">
                     <div class="wrap-custom-file">
                        <input type="file" name="image1" id="image1" accept=".gif, .jpg, .png" />
                        <label  for="image1">
                        <span><img src="${pageContext.request.contextPath}/resources/img/user.png" alt="" class="image-fluid"></span>
                    
                        </label>
                     </div>
                  </div>
                  <div class="personal-info">
                     <p>Gender</p>
                     <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender1" value="option1" checked="">
                        <label class="form-check-label">
                        Male
                        </label>
                     </div>
                     <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender1" value="option2" checked="">
                        <label class="form-check-label">
                        Female
                        </label>
                     </div>
                  </div>
               </div>
               <div class="form-left-to-w3l">
                  <input type="text" name="firstname1" placeholder="Name" required="required">
                  <div class="clear"></div>
               </div>
               <div class="form-left-to-w3l">
                  <input type="text" name="lastname1" placeholder="Last Name" required="required">
                  <div class="clear"></div>
               </div>
              
               
            </div>
         
   </div>


      <br>
      <br>


      <div class="mid-cls">
        
            <div class="main">
               <div class="icon-head-wthree">
                  <div class="images-headder">
                     <div class="wrap-custom-file">
                        <input type="file" name="image1" id="image1" accept=".gif, .jpg, .png" />
                        <label  for="image1">
                        <span><img src="${pageContext.request.contextPath}/resources/img/user.png" alt="" class="image-fluid"></span>
                     
                        </label>
                     </div>
                  </div>
                  <div class="personal-info">
                     <p>Gender</p>
                     <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender2" value="option3" checked="" required="required">
                        <label class="form-check-label">
                        Male
                        </label>
                     </div>
                     <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender2" value="option4" checked="" required="required">
                        <label class="form-check-label">
                        Female
                        </label>
                     </div>
                  </div>
               </div>
               </div>
               <div class="form-left-to-w3l">
                  <input type="text" name="firstname2" placeholder="First Name" required="required">
                  <div class="clear"></div>
               </div>
               <div class="form-left-to-w3l">
                  <input type="text" name="lastname2" placeholder="Last Name" required="required">
                  <div class="clear"></div>
               </div>
              
     	
       </div>
              
      </div>
       
     


      <br>
      <br>


      <div class="mid-cls">
        
            <div class="main">
               <div class="icon-head-wthree">
                  <div class="images-headder">
                     <div class="wrap-custom-file">
                        <input type="file" name="image1" id="image1" />
                        <label  for="image1">
                        <span><img src="${pageContext.request.contextPath}/resources/img/user.png" alt="" class="image-fluid"></span>
                      
                        </label>
                     </div>
                  </div>
                  <div class="personal-info">
                     <p>Gender</p>
                     <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender3" value="option5" checked="" required = "required">
                        <label class="form-check-label">
                        Male
                        </label>
                     </div>
                     <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender3" value="option6" checked="" required = "required">
                        <label class="form-check-label">
                        Female
                        </label>
                     </div>
                  </div>
               </div>
               </div>
               <div class="form-left-to-w3l">
                  <input type="text" name="firstname3" placeholder="First Name" required = "required">
                  <div class="clear"></div>
               </div>
               <div class="form-left-to-w3l">
                  <input type="text" name="lastname3" placeholder="Last Name" required = "required">
                  <div class="clear"></div>
               </div>
              
              
            </div>
       
          
     				<div class="btnn ">
                  <button type="submit" class = "btn btn-info .btn-sm" style="background:#000000 !important;border: 1px solid black !important;  margin-left:auto !important; margin-right:auto !important; display:block !important;  margin-top:5% !important; margin-bottom:0% !important">Submit</button><br>
                  <div class="clear"></div>
  
  				   </div>
   </form:form>   

    <%}%>
    
    
      <div class="copy">
         <p>&copy;Phoenix Airlines | Design by Team Phoenix</a></p>
      </div>
      <!--js working-->
      <script src='js/jquery-2.2.3.min.js'></script>
      <!--//js working-->

  
  
  
  
  
      
</body>
</html>