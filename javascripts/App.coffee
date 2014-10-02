---
---
sub = angular.module('sub', [], ($interpolateProvider) ->
	$interpolateProvider.startSymbol('[[')
	$interpolateProvider.endSymbol(']]')
)
