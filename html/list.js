(function(angular) {
    console.log('angular!');
    var app = angular.module('reflexfps', []);
    app.controller('ListController', ['$scope', '$http', function($scope, $http) {
        $scope.amis = [];

        $http.get('/amis.json').success(function(amis) {
            $scope.amis = amis;
        });
    }]);
})(angular);