
var myApp = angular.module('myApp', []);

// Define your AngularJS controller
myApp.controller('formCtrl', ['$scope', '$http', function($scope, $http) {
    // Function to handle the registration of the vehicle
    $scope.registerVehicle = function() {
        // Define the data to be sent in the POST request
        var data = {
            owner_name: $scope.ownerName,
            vehicle_make: $scope.vehicleMake,
            vehicle_model: $scope.vehicleModel,
            engine_cc: $scope.engine,
            engine_no: $scope.engineNumber,
            chassis_no: $scope.chassisNumber,
            power: $scope.power,
            reg_no: $scope.registrationNumber,
            owner_mob: $scope.OwnerMob,
            color: $scope.color,
            seating_n: $scope.seatingCapacity,
            vehicle_type: $scope.vehicleType
        };
        
        // Convert the JavaScript object to JSON string
        var jsonData = JSON.stringify(data);

        // Set the headers to indicate JSON content
        var config = {
            headers: {
                'Content-Type': 'application/json'
            }
        };

        // Send POST request to your REST API endpoint
        $http.post('/data/NewReg', jsonData, config)
            .then(function(response) {
                // Handle success response here
                $scope.status="Success";
               //console.log('Vehicle registered successfully:', response.data);
                // You can also perform any additional actions upon success
            })
            .catch(function(error) {
                // Handle error response here
                //console.error('Error registering vehicle:', error);
                $scope.status="Error";
                // You can also display an error message to the user
            });
    };
}]);
