<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" ng-app="searchApp">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Search Page</title>  
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/style/searchStyle.css">
  <script src="<%= request.getContextPath() %>/script/angular.js"></script>
  <script>
  var app = angular.module('searchApp', []);

  app.controller('SearchController', function($scope, $http) {
    $scope.search = function() {
      $http({
        method: 'GET',
        url: '/data/registration/' + $scope.regNo
      }).then(function(response) {
        $scope.details = response.data;
        $scope.showDetails = true;
      }, function(error) {
        console.log('Error:', error);
      });
    };
  });

  </script>
</head>
<body>

	<nav class="navbar">
        <ul>           
            <li><a href="/">Sign out</a></li>
            <li><a href="">User</a></li>
            <li><a href="/transfer">Transfer Ownership</a></li>
            <li><a href="/registration">New Registration</a></li>
            <li><a href="">Search</a></li>
            <div class="logo">
                <a href="/home"><img src="img/logo.png" alt="Logo"></a>
            </div>          
        </ul>
    </nav>
    
  <div ng-controller="SearchController" class=searchDetails>
    <h2>Search Page</h2>
    <p><a href="/all">See All Vehicles Detail</a></p>
    <form ng-submit="search()">
      <label for="regNo">Enter Registration Number:</label>
      <input type="text" id="regNo" ng-model="regNo" required>
      <button type="submit">Search</button>
    </form>
    <div ng-show="showDetails">
      <h3>Details:</h3>
      <table>
		  <tr>
		    <th>Field</th>
		    <th>Value</th>
		  </tr>
		  <tr>
		    <td>Registration Number</td>
		    <td>{{details.reg_no}}</td>
		  </tr>
		  <tr>
		    <td>Owner Mob</td>
		    <td>{{details.owner_mob}}</td>
		  </tr>
		  <tr>
		    <td>Power</td>
		    <td>{{details.power}}</td>
		  </tr>
		  <tr>
		    <td>Seating Capacity</td>
		    <td>{{details.seating_n}}</td>
		  </tr>
		  <tr>
		    <td>Owner Name</td>
		    <td>{{details.owner_name}}</td>
		  </tr>
		  <tr>
		    <td>Vehicle Make</td>
		    <td>{{details.vehicle_make}}</td>
		  </tr>
		  <tr>
		    <td>Vehicle Model</td>
		    <td>{{details.vehicle_model}}</td>
		  </tr>
		  <tr>
		    <td>Engine Number</td>
		    <td>{{details.engine_no}}</td>
		  </tr>
		  <tr>
		    <td>Chassis Number</td>
		    <td>{{details.chassis_no}}</td>
		  </tr>
		  <tr>
		    <td>Vehicle Type</td>
		    <td>{{details.vehicle_type}}</td>
		  </tr>
		  <tr>
		    <td>Engine CC</td>
		    <td>{{details.engine_cc}}</td>
		  </tr>
		</table>
    </div>
  </div>
</body>
</html>
