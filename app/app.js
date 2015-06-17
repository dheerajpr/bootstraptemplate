app = angular.module('app', []);

app.controller("languages",function($scope,$http){
	$http.get( 'api/v1/languages').then(function (results) {
        $scope.languages = results.data;
    });

    $scope.buttonclick = function (name) {
			$http.get( 'api/v1/frameworks', {
				params: {
		            language_id: name
		            
        		}
			}). then(function (results) {
        $scope.frameworks = results.data;
    });
    };


});


app.controller("frameworks",function($scope,$http){
	
	$scope.buttonclick = function () {
			$http.get( 'api/v1/frameworks', {
				params: {
		            language_id: $scope.p.id
		            
        		}
			}). then(function (results) {
        $scope.frameworks = results.data;
    });
    };
	
});


