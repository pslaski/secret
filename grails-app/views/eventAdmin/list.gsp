
<%@ page import="pl.secret.Event" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
        <title><g:message code="event.list.label" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="event.create.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="event.list.label"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'event.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'event.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'event.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="details" title="${message(code: 'event.details.label', default: 'Details')}" />
                        
                            <g:sortableColumn property="authorName" title="${message(code: 'event.authorName.label', default: 'Author Name')}" />
                        
                            <th><g:message code="event.performer.label" default="Performer" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${eventInstanceList}" status="i" var="eventInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${eventInstance.id}">${fieldValue(bean: eventInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: eventInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: eventInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: eventInstance, field: "details")}</td>
                        
                            <td>${fieldValue(bean: eventInstance, field: "authorName")}</td>
                        
                            <td>${fieldValue(bean: eventInstance, field: "performer")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${eventInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
