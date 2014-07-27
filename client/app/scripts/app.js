'use strict';

var carManagerApp = angular.module('carManagerApp', ['ngRoute', 'ngResource']);

carManagerApp.config(function ($routeProvider, $httpProvider) {
	$routeProvider
		.when('/',
		{
			controller: 'HomeCtrl',
			templateUrl: 'views/home.html'
		})
		.otherwise({redirectTo: '/'});
});
