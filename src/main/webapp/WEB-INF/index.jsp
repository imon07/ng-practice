<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html xmlns:ng="http://angularjs.org" id="ng-app" ng-app="treatmentModule" >

<head lang="en">
    <meta charset="UTF-8">
    <script src="/js/js2/angular-1.2.12.min.js"></script>
    <script src="/js/js2/app.js"></script>
    <%--<link rel="stylesheet" type="text/css" href="/css/spinner.css">--%>
</head>

<body ng-controller="treatmentController" ng-init="init('${formId}')">

<%--<div ng-class="{cover: loading}"></div>--%>

<%--<div ng-class="{modal: loading}">--%>
    <%--<div id="circularG" ng-show="loading">--%>
        <%--<div id="circularG_1" class="circularG">--%>
        <%--</div>--%>
        <%--<div id="circularG_2" class="circularG">--%>
        <%--</div>--%>
        <%--<div id="circularG_3" class="circularG">--%>
        <%--</div>--%>
        <%--<div id="circularG_4" class="circularG">--%>
        <%--</div>--%>
        <%--<div id="circularG_5" class="circularG">--%>
        <%--</div>--%>
        <%--<div id="circularG_6" class="circularG">--%>
        <%--</div>--%>
        <%--<div id="circularG_7" class="circularG">--%>
        <%--</div>--%>
        <%--<div id="circularG_8" class="circularG">--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<div>
    <form ng-submit="saveTreatment()">
        <label>Problem Name:</label>
        <input ng-model="treatment.problemName" type="text" ng-required="!treatment.problemName"/>
        <span style="color: red" ng-show="errorProblemName">{{ errorProblemName }}</span>

        <br>

        <label>longTermGoal:</label>
        <input ng-model="treatment.longTermGoal" type="text"/>
        <span style="color: red" ng-show="errorLongTermGoal">{{ errorLongTermGoal }}</span>

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
        <button type="submit">Save</button>
    </form>
</div>

</body>
</html>