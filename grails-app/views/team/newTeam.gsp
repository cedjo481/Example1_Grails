<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 04/12/2023
  Time: 14:48
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />

    <g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>

<div id="create-team" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.team}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.team}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form resource="${this.team}" method="POST">
        <fieldset class="form">
            <f:all bean="team"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:form>
</div>
</body>
</html>