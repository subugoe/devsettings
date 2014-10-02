---
---
angular.module('sub').controller('mainController', ($scope, $http) ->
  $http.get('http://get.typo3.org/json').success (data) ->
    $scope.t3vers = data
    $scope.formData = {}
    $scope.formData.selectedVersion = data.latest_stable
)