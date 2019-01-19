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
<link href="${pageContext.request.contextPath}/resources/css/flightseat.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/myjs/flightseat.js"></script> 
</head>
<body>
      <label id=mylabel><%=session.getAttribute("seatlist1")%></label>
      
      <button class="button" id="confirm">Confirm Seats</button>
      <br>
      
      
      
      <c:url var="addAction" value="/payment" ></c:url>
      <form:form  action="${addAction}" >
      <input type="text" name="seats" id="seats"></input>
      <br>
      <button class="button">Proceed</button>
      </form:form>
  
  <!--flight seat-->
   <label id="seatcount"><%=session.getAttribute("adultcount")%></label>
    <div class="plane" >
        <div class="cockpit">
          <h1>Please select a seat</h1>
        </div>
        
        <div class="exit exit--front fuselage">
          
        </div>

        <ol class="cabin fuselage">

          <li class="row row--1">
            <ol class="seats" type="A">
              <li class="seat">
                <input type="checkbox" id="1A" value="1A" name="fseat"/>
                <label for="1A">1A</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="1B" value="1B" name="fseat"/>
                <label for="1B">1B</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="1C" value="1C" name="fseat"/>
                <label for="1C">1C</label>
              </li>
              <li class="seat">
                <input type="checkbox"  id="1D" value="1D" name="fseat"/>
                <label for="1D">1D</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="1E" value="1E" name="fseat"/>
                <label for="1E">1E</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="1F" value="1F" name="fseat"/>
                <label for="1F">1F</label>
              </li>
            </ol>
          </li>

          <li class="row row--2">
            <ol class="seats" type="A">
              <li class="seat">
                <input type="checkbox" id="2A"  value="2A" name="fseat"/>
                <label for="2A">2A</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="2B" value="2B" name="fseat"/>
                <label for="2B">2B</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="2C"  value="2C" name="fseat"/>
                <label for="2C">2C</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="2D" value="2D" name="fseat"/>
                <label for="2D">2D</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="2E" value="2E" name="fseat"/>
                <label for="2E">2E</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="2F" value="2F" name="fseat"/>
                <label for="2F">2F</label>
              </li>
            </ol>
          </li>

          <li class="row row--3">
            <ol class="seats" type="A">
              <li class="seat">
                <input type="checkbox" id="3A" value="3A" name="fseat"/>
                <label for="3A">3A</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="3B" value="3B" name="fseat" />
                <label for="3B">3B</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="3C" value="3C" name="fseat"/>
                <label for="3C">3C</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="3D" value="3D" name="fseat"/>
                <label for="3D">3D</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="3E" value="3E" name="fseat"/>
                <label for="3E">3E</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="3F" value="3F" name="fseat"/>
                <label for="3F">3F</label>
              </li>
            </ol>
          </li>

          <li class="row row--4">
            <ol class="seats" type="A">
              <li class="seat">
                <input type="checkbox" id="4A" value="4A" name="fseat"/>
                <label for="4A">4A</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="4B" value="4B" name="fseat"/>
                <label for="4B">4B</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="4C" value="4C" name="fseat"/>
                <label for="4C">4C</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="4D" value="4D" name="fseat"/>
                <label for="4D">4D</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="4E" value="4E" name="fseat"/>
                <label for="4E">4E</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="4F" value="4F" name="fseat"/>
                <label for="4F">4F</label>
              </li>
            </ol>
          </li>

          <li class="row row--5">
            <ol class="seats" type="A">
              <li class="seat">
                <input type="checkbox" id="5A" value="5A" name="fseat"/>
                <label for="5A">5A</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="5B" value="5B" name="fseat"/>
                <label for="5B">5B</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="5C" value="5C" name="fseat"/>
                <label for="5C">5C</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="5D" value="5D" name="fseat"/>
                <label for="5D">5D</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="5E" value="5E" name="fseat"/>
                <label for="5E">5E</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="5F" value="5F" name="fseat" />
                <label for="5F">5F</label>
              </li>
            </ol>
          </li>

          <li class="row row--6">
            <ol class="seats" type="A">
              <li class="seat">
                <input type="checkbox" id="6A" value="6A" name="fseat" />
                <label for="6A">6A</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="6B" value="6B" name="fseat"/>
                <label for="6B">6B</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="6C" value="6C" name="fseat" />
                <label for="6C">6C</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="6D" value="6D" name="fseat"/>
                <label for="6D">6D</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="6E" value="6E" name="fseat"/>
                <label for="6E">6E</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="6F" value="6F" name="fseat"/>
                <label for="6F">6F</label>
              </li>
            </ol>
          </li>

          <li class="row row--7">
            <ol class="seats" type="A">
              <li class="seat">
                <input type="checkbox" id="7A" value="7A" name="fseat"/>
                <label for="7A">7A</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="7B" value="7B" name="fseat"/>
                <label for="7B">7B</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="7C" value="7C" name="fseat"/>
                <label for="7C">7C</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="7D" value="7D" name="fseat"/>
                <label for="7D">7D</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="7E" value="7E" name="fseat"/>
                <label for="7E">7E</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="7F" value="7F" name="fseat"/>
                <label for="7F">7F</label>
              </li>
            </ol>
          </li>

          <li class="row row--8">
            <ol class="seats" type="A">
              <li class="seat">
                <input type="checkbox" id="8A" value="8A" name="fseat"/>
                <label for="8A">8A</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="8B" value="8B" name="fseat"/>
                <label for="8B">8B</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="8C" value="8C" name="fseat"/>
                <label for="8C">8C</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="8D" value="8D" name="fseat"/>
                <label for="8D">8D</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="8E" value="8E" name="fseat"/>
                <label for="8E">8E</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="8F" value="8F" name="fseat"/>
                <label for="8F">8F</label>
              </li>
            </ol>
          </li>

          <li class="row row--9">
            <ol class="seats" type="A">
              <li class="seat">
                <input type="checkbox" id="9A" value="9A" name="fseat"/>
                <label for="9A">9A</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="9B" value="9B" name="fseat"/>
                <label for="9B">9B</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="9C" value="9C" name="fseat"/>
                <label for="9C">9C</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="9D" value="9D" name="fseat"/>
                <label for="9D">9D</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="9E" value="9E" name="fseat"/>
                <label for="9E">9E</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="9F" value="9F" name="fseat"/>
                <label for="9F">9F</label>
              </li>
            </ol>
          </li>

          <li class="row row--10">
            <ol class="seats" type="A">
              <li class="seat">
                <input type="checkbox" id="10A" value="10A" name="fseat"/>
                <label for="10A">0A</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="10B" value="10B" name="fseat"/>
                <label for="10B">0B</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="10C" value="10C" name="fseat"/>
                <label for="10C">0C</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="10D" value="10D" name="fseat"/>
                <label for="10D">0D</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="10E" value="10E" name="fseat"/>
                <label for="10E">0E</label>
              </li>
              <li class="seat">
                <input type="checkbox" id="10F" value="10F" name="fseat"/>
                <label for="10F">0F</label>
              </li>
            </ol>
          </li>
        </ol>
        
        <div class="exit exit--back fuselage">
          
       </div>
       
      </div>
      
      
     
      
      

</body>
</html>