(function () {
    var app = angular.module('treatmentModule', []);

    app.directive('modalDialog', function () {
        return {
            restrict: 'E',
            scope: {
                show: '='
            },
            replace: true, // Replace with the template below
            transclude: true, // we want to insert custom content inside the directive
            link: function (scope, element, attrs) {
                scope.dialogStyle = {};
                if (attrs.width)
                    scope.dialogStyle.width = attrs.width;
                if (attrs.height)
                    scope.dialogStyle.height = attrs.height;
                scope.hideModal = function () {
                    scope.show = false;
                };
            },
            template: "<div class='ng-modal' ng-show='show'>\n" +
                "  <div class='ng-modal-overlay'></div>\n" +
                "  <div class='ng-modal-dialog' ng-style='dialogStyle'>\n" +
                "    <div class='ng-modal-dialog-content' ng-transclude></div>\n" +
                "  </div>\n" +
                "</div>"
        };
    });

    app.controller('treatmentController', function ($scope, $http) {
        $scope.modalShown = true;

        $scope.init = function (formId) {
            $scope.formId = formId;
            var url = "/api/data" + "?formId=" + $scope.formId;

            $http.get(url)
                .success(function (data) {
                    $scope.treatment = data;
                    $scope.modalShown = false;
                }).error(function () {
                    alert("Unexpected Error occurred")
                });
        };

        $scope.saveTreatment = function () {
            $scope.modalShown = true;
            var url = '/api/save';
            $http.post(url, $scope.treatment)
                .success(function (data) {
                    $scope.modalShown = false;
                    if (!data.success) {
                        $scope.errorProblemName = data.errorProblemName;
                        $scope.errorLongTermGoal = data.errorLongTermGoal;
                    }
                    $scope.loading = false;
                }).error(function (data) {

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