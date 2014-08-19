<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html ng-app="treatmentModule" xmlns="http://www.w3.org/1999/html">

<head lang="en">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/css/bootstrap.css"/>
    <script src="/js/angular.js"></script>
    <script src="/js/js2/app.js"></script>
</head>

<body ng-controller="treatmentController" ng-init="init('${formId}')">

<form>
    <label>Problem Name:</label>
    <input ng-model="treatment.problemName" type="text"/>

    <br>

    <label>longTermGoal:</label>
    <input ng-model="treatment.longTermGoal" type="text"/>

    <br>

    <div ng-repeat="shortGoal in treatment.shortTermGoalList">
        <br>
        <hr>
        <label>Short Term Goal</label>

        <label>goal:</label>
        <input ng-model="shortGoal.goal" type="text">

        <div ng-repeat="intervention in shortGoal.interventionList">
            <label>Intervention</label>
            <br>
            <label>title:</label>
            <input ng-model="intervention.title" type="text">

            <label>personResponsible:</label>
            <input ng-model="intervention.personResponsible" type="text">

            [<a href ng-cloak ng-click="deleteIntervention($parent.$index, $index)">
            Delete Intervention {{ $parent.$index }} {{ $index }}</a>]
        </div>
        <br>
        [<a href ng-cloak ng-click="addIntervention($index)">Add Intervention {{ $index }}</a>]

        [<a href ng-cloak ng-click="deleteShortTermGoal($index)">Delete Short Term Goal {{ $index }}</a>]

    </div>
    <br>
    [<a href ng-click="addShortTermGoal()">Add Short Term Goal</a>]

    <br>
    <button ng-click="saveTreatment()">Save</button>
</form>


</body>
</html>