<!DOCTYPE html>
<html ng-app="myApp">
	<head>
		<title>All Vehicles Registration Details</title>
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/style/style.css"> 
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-grid/4.10.0/ui-grid.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-grid/4.10.0/ui-grid.min.css" />
		<script>
		  angular.module('myApp', ['ui.grid'])
		  .controller('GridController', ['$scope', '$http', function($scope, $http) {
		    $scope.gridOptions = {
		      columnDefs: [
		        { name: 'reg_no' },
		        { name: 'owner_name' },
		        { name: 'vehicle_make' },
		        { name: 'vehicle_model' },
		        { name: 'power' },
		        { name: 'color' },
		        { name: 'owner_mob' },
		        { name: 'engine_no' },
		        { name: 'chassis_no' },
		        { name: 'engine_cc' },
		        { name: 'seating_n' },
		        { name: 'vehicle_type' }
		      ],
		      data: []
		    };
		
		    $http.get('/data/allReg')
		    .then(function(response) {
		      $scope.gridOptions.data = response.data;
		    })
		    .catch(function(error) {
		      console.error('Error fetching data:', error);
		    });
		  }]);
		</script>
	</head>
<body>

	<nav class="navbar">
        <ul>           
            <li><a href="/">Sign out</a></li>
            <li><a href="">User</a></li>
            <li><a href="/transfer">Transfer Ownership</a></li>
            <li><a href="/registration">New Registration</a></li>
            <li><a href="/search">Search</a></li>
            <div class="logo">
                <a href="/home"><img src="img/logo.png" alt="Logo"></a>
            </div>          
        </ul>
    </nav>
    
	<div ng-controller="GridController">
	  <div ui-grid="gridOptions" style="height: 590px;"></div>
	</div>
	
</body>
</html>
