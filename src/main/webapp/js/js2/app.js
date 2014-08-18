(function () {
    var app = angular.module('treatmentModule', []);

    app.controller('treatmentController', function ($scope, $http) {
//        $scope.treatment = new treatment();

        $scope.init = function (formId) {
            $scope.formId = formId;
            $http.get("/api/data" + "?formId=" + $scope.formId).success(function (data) {
                $scope.treatment = data;
            }).error(function () {
                    alert("Unexpected Error occurred")
                });
        };

        $scope.saveTreatment = function () {
            $http.post('/api/save', $scope.treatment).success(function () {

            }).error(function () {

                })
        };

        $scope.addIntervention = function (index) {
            $scope.treatment.shortTermGoalList[index].interventionList.push(new intervention());
        };

        $scope.deleteIntervention = function (parentindex, index) {
            $scope.treatment.shortTermGoalList[parentindex].interventionList.splice(index, 1);
        };

        $scope.deleteShortTermGoal = function (index) {
            $scope.treatment.shortTermGoalList.splice(index, 1);
        };

        $scope.addShortTermGoal = function () {
            $scope.treatment.shortTermGoalList.push(new shortTermGoal());
        };

    });

    var treatment = function () {
        this.problemName = "";
        this.longTermGoal = "";
        this.shortTermGoalList = []
    };

    var shortTermGoal = function () {
        this.goal = "";
        this.interventionList = []
    };

    var intervention = function () {
        this.title = "";
        this.personResponsible = ""
    };
})();