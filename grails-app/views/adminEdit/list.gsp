<%@ page import="pl.secret.Admin" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'admin.label', default: 'Admin')}" />
        <title><g:message code="admin.list.admin"/></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="admin.create.admin"/></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="admin.list.admin"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'default.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="username" title="${message(code: 'default.username.label', default: 'Username')}" />
                        
                	 <%--   <g:sortableColumn property="password" title="${message(code: 'author.password.label', default: 'Password')}" /> --%>
                        
                            <g:sortableColumn property="name" title="${message(code: 'default.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="surname" title="${message(code: 'default.surname.label', default: 'Surname')}" />
                        
                            <g:sortableColumn property="enabled" title="${message(code: 'default.enabled.label', default: 'Enabled')}" />
                           
                            <g:sortableColumn property="accountLocked" title="${message(code: 'default.accountLocked.label', default: 'Account Locked')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${admins}" status="i" var="admin">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${admin.id}">${fieldValue(bean: admin, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: admin, field: "username")}</td>
                        
                       <%-- <td>${fieldValue(bean: admin, field: "password")}</td>  --%>
                        
                            <td>${fieldValue(bean: admin, field: "name")}</td>
                        
                            <td>${fieldValue(bean: admin, field: "surname")}</td>
                            
                            <td><g:formatBoolean boolean="${admin.enabled}" /></td>
                        
                            <td><g:formatBoolean boolean="${admin.accountLocked}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${adminsTotal}" />
            </div> 
        </div>
    </body>
</html>
