<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 04/12/2023
  Time: 15:32
--%>


<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-team" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
<!--f:table collection="${teamList}" /-->
    <table>
        <thead>
        <tr>
            <th>name</th>
            <th>city</th>
            <th>stadium</th>
            <th>logo</th>
            <th>manager</th>

        </tr>
        </thead>
        <tbody>

        <g:each in="${teamList}" var="c">
            <tr>
                <td>
                    ${c.city}
                </td>
                <td>
                    ${c.stadium}
                </td>
                <td>
                    ${c.logo}
                </td>
                <td>
                    ${c.manager}
                </td>
                <td>

                </td>
                <td>

                </td>
            </tr>
        </g:each>
        </tbody>

    </table>

    <div class="pagination">
        <g:paginate total="${teamCount ?: 0}"/>
    </div>
</div>

<div class="col-md-6">

    <form action="/Team/save" method="post">
        <div class="form-group">
            <label>Nom</label>
            <input type="text" name="name" class="form-control"/>

        </div>
        <div class="form-group">
            <label>City</label>
            <input type="text" class="form-control" name="city"/>

        </div>
        <div class="form-group">
            <label>Stadium</label>
            <input type="text" class="form-control" name="stadium"/>

        </div>
        <div class="form-group">
            <label>logo</label>
            <input type="text" class="form-control"  name="logo"/>

        </div>
        <div class="form-group">
            <label>Manager</label>
            <input type="text" class="form-control" name="manager"/>

        </div>
        <div class="form-group">
            <button type="submit" name="create" class="btn btn-primary"  >Add</button>
        </div>
    </form>

</div>

<!--<g:form action="exampleSubmit">
    <p>
        <label>Application Group or Area</label>
        <g:textField name="apparea01" type="text" placeholder="Place Holder Text Field 1" value='${params.apparea01}' />
    </p>
    <p>
        <label>Department Name</label>
        <g:textField name="deptname02" type="text" placeholder="Place Holder Text Field 2" value='${params.deptname02}' />
    </p>
    <p>
        <label>Email</label>
        <g:textField name="email" type="text" placeholder="Place Holder Text Field 3" value='${params.email}' />
    </p>
    <p>
        <input type="submit" value="Submit Form" id="FormButton" >
    </p>
</g:form> ce code en commentaire permet de recuper une valeur sans le definir comme objet dans une classe via params
( voir action  exampleSubmit dans le controller Team)-->

</body>
</html>

