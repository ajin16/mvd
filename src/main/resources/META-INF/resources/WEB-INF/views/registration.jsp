<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<%
	//You may have a session attribute to check if the user is already logged in
	// For example, if you have a session attribute named "loggedInUser"

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Registration</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/style/reg.css">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script src="<%= request.getContextPath() %>/script/reg.js"></script>
</head>
<body>
    <nav class="navbar">
        <ul>           
            <li><a href="/">Sign out</a></li>
            <li><a href="">User</a></li>
            <li><a href="/transfer">Transfer Ownership</a></li>
            <li><a href="">New Registration</a></li>
            <li><a href="/search">Search</a></li>
            <div class="logo">
                <a href="/home"><img src="img/logo.png" alt="Logo"></a>
            </div> 
            
        </ul>
    </nav>
    
    <h1>Vehicle Registration Form</h1>
    <div ng-app="myApp" ng-controller="formCtrl">
        <form id="registrationForm" ng-submit="registerVehicle()">
            <div class="row">
                <div class="form-group">
                    <label for="ownerName">Owner's Name:</label>
                    <input type="text" id="ownerName" ng-model="ownerName" required>
                </div>
                <div class="form-group">
                    <label for="vehicleMake">Vehicle Make:</label>
                    <input type="text" id="vehicleMake" ng-model="vehicleMake" required>
                </div>
            </div>
            <div class="row">
                <div class="form-group">
                    <label for="vehicleModel">Vehicle Model:</label>
                    <input type="text" id="vehicleModel" ng-model="vehicleModel" required>
                </div>
                <div class="form-group">
                    <label for="engine">Engine:</label>
                    <input type="text" id="engine" ng-model="engine" required>
                </div>
            </div>
            <div class="row">
                <div class="form-group">
                    <label for="engineNumber">Engine Number:</label>
                    <input type="text" id="engineNumber" ng-model="engineNumber" required>
                </div>
                <div class="form-group">
                    <label for="chassisNumber">Chassis Number:</label>
                    <input type="text" id="chassisNumber" ng-model="chassisNumber" required>
                </div>
            </div>
            <div class="row">
                <div class="form-group">
                    <label for="power">Power:</label>
                    <input type="text" id="power" ng-model="power" required>
                </div>
                <div class="form-group">
                    <label for="registrationNumber">Registration Number:</label>
                    <input type="text" id="registrationNumber" ng-model="registrationNumber" required>
                </div>
            </div>
            <div class="row">
                <div class="form-group">
                    <label for="OwnerMob">Owner Mob:</label>
                    <input type="text" id="OwnerMob" ng-model="OwnerMob" required>
                </div>
                <div class="form-group">
                    <label for="registrationNumber">Color:</label>
                    <input type="text" id="color" ng-model="color" required>
                </div>
            </div>
            <div class="row">
                <div class="form-group">
                    <label for="seatingCapacity">Seating Capacity:</label>
                    <input type="number" id="seatingCapacity" ng-model="seatingCapacity" required>
                </div>
                <div class="form-group">
                    <label for="vehicleType">Vehicle Type:</label>
                    <select id="vehicleType" ng-model="vehicleType" required>
                        <option value="">Select</option>
                        <option value="MCWOG">MCWOG</option>
                        <option value="M/CYCL WG">M/CYCL WG</option>
                        <option value="LMV">LMV</option>
                        <option value="HMV">HMV</option>
                    </select>
                </div>
            </div>
            <button type="submit">Register Vehicle</button>
            <div class="stat">{{status}}</div>
        </form>
        
    </div>
    
</body>
</html>