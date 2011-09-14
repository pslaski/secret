
<%@ page import="pl.secret.Author" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'author.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="username" title="${message(code: 'author.username.label', default: 'Username')}" />
                        
                            <g:sortableColumn property="password" title="${message(code: 'author.password.label', default: 'Password')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'author.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="surname" title="${message(code: 'author.surname.label', default: 'Surname')}" />
                        
                            <g:sortableColumn property="accountExpired" title="${message(code: 'author.accountExpired.label', default: 'Account Expired')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${authors}" status="i" var="author">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${author.id}">${fieldValue(bean: author, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: author, field: "username")}</td>
                        
                            <td>${fieldValue(bean: author, field: "password")}</td>
                        
                            <td>${fieldValue(bean: author, field: "name")}</td>
                        
                            <td>${fieldValue(bean: author, field: "surname")}</td>
                        
                            <td><g:formatBoolean boolean="${author.accountExpired}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${authorsTotal}" />
            </div> 
        </div>
    </body>
</html>
