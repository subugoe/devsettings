---
---
angular.module('sub').controller('mainController', ($scope, $http) ->
  $scope.localDirectory = '~/repo/VagrantTYPO3'
  $http.get('http://get.typo3.org/json').success (data) ->
    $scope.t3vers = data
    $scope.formData = {}
    $scope.formData.selectedVersion = data.latest_stable
)