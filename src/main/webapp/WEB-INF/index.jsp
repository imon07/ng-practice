<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html ng-app="treatmentModule" xmlns="http://www.w3.org/1999/html">
<head lang="en">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/css/bootstrap.css"/>
    <script src="/js/angular.js"></script>
    <script src="/js/js2/app.js"></script>
</head>

<body ng-controller="treatmentController" ng-init="init('${formId}')">
<form>
    <!--[<a href ng-click="loadTreatments()">load</a> ]-->
    Problem Name:<input ng-model="treatment.problemName" type="text"/>
    longTermGoal: <input ng-model="treatment.longTermGoal" type="text"/>

    <div ng-repeat="shortGoal in treatment.shortTermGoalList">
        Short Term Goal:
        goal:<input ng-model="shortGoal.goal" type="text">
        <div ng-repeat="intervention in shortGoal.interventionList">
            title:<input ng-model="intervention.title" type="text">
            personResponsible:<input ng-model="intervention.personResponsible" type="text">
            [<a href ng-click="deleteIntervention($parent.$index, $index)">Delete Intervention {{ $parent.$index }} {{ $index }}</a>]
        </div>
        [<a href ng-click="addIntervention($index)">Add Intervention {{ $index }}</a>]
        [<a href ng-click="deleteShortTermGoal($index)">Delete Short Term Goal {{ $index }}</a>]

    </div>
    [<a href ng-click="addShortTermGoal()">Add Short Term Goal</a>]


    <button ng-click="saveTreatment()">Save</button>
</form>


</body>
</html>