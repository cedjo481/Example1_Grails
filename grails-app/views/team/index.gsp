<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-team" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

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
</body>
</html>