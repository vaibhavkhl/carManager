'use strict';

carManagerApp.controller('HomeCtrl', function ($scope, $resource) {
	var Car = $resource("http://localhost:3000/cars/:id", {id: "@id"}, {});
	
	$scope.cars = Car.query();
	
	$scope.addCar = function() {
	  var car = new Car();
	  car.name = $scope.car.name
	  $scope.car.name = null;
	  console.log(car)
	  car.$save(function() {
	  	$scope.cars = Car.query();
	  	console.log($scope.cars);
	  });
	}
});