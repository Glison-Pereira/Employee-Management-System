<%@ page import="java.time.*" %>
<html>
<head>
     <title>Employee Management System</title>
     <link rel="stylesheet" href="style.css">
     <link rel="icon" href="https://4.imimg.com/data4/OO/UR/ANDROID-14010578/product.jpeg">
     <script>
         const x = document.getElementById("demo");

	function getLocation() {
  		if (navigator.geolocation) {
    			navigator.geolocation.getCurrentPosition(showPosition);
  		} else {
    			x.innerHTML = "Geolocation is not supported by this browser.";
  		}
	}

	function showPosition(position) {
  			x.innerHTML = "Latitude: " + position.coords.latitude +"<br>Longitude: " + position.coords.longitude;
	}
     </script>
</head>
<body onload="showLocation()">
     	<h1>Welcome to Employee Management System</h1>
     	<a href="Add.jsp"><input type="submit" value="Add Employee" class="btn" ></a><br><br>

     	<a href="View.jsp"><input type="submit" value="View Employee" class="btn" ></a><br><br>

	<a href="Delete.jsp"><input type="submit" value="Delete Employee" class="btn" ></a><br><br>

	<a href="Update.jsp"><input type="submit" value="Update Employee" class="btn" ></a><br><br>

	<button onclick="getLocation()" class="btn">Get Location</button>
        <p id="demo"></p>
        
        <%
            LocalTime t=LocalTime.now();
            int hr=t.getHour(),min=t.getMinute(),sec=t.getSecond();
        %>  
        <h3><%= "Current Time is "+hr+":"+min+":"+sec %></h3>
</body>
</html>