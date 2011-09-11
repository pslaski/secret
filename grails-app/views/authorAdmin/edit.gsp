

<%@ page import="pl.secret.Author" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${authorInstance}">
            <div class="errors">
                <g:renderErrors bean="${authorInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${authorInstance?.id}" />
                <g:hiddenField name="version" value="${authorInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="username"><g:message code="author.username.label" default="Username" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'username', 'errors')}">
                                    <g:textField name="username" value="${authorInstance?.username}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="password"><g:message code="author.password.label" default="Password" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'password', 'errors')}">
                                    <g:textField name="password" value="${authorInstance?.password}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="author.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${authorInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="surname"><g:message code="author.surname.label" default="Surname" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'surname', 'errors')}">
                                    <g:textField name="surname" value="${authorInstance?.surname}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="accountExpired"><g:message code="author.accountExpired.label" default="Account Expired" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'accountExpired', 'errors')}">
                                    <g:checkBox name="accountExpired" value="${authorInstance?.accountExpired}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="accountLocked"><g:message code="author.accountLocked.label" default="Account Locked" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'accountLocked', 'errors')}">
                                    <g:checkBox name="accountLocked" value="${authorInstance?.accountLocked}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="enabled"><g:message code="author.enabled.label" default="Enabled" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'enabled', 'errors')}">
                                    <g:checkBox name="enabled" value="${authorInstance?.enabled}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="events"><g:message code="author.events.label" default="Events" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'events', 'errors')}">
                                    
<ul>
<g:each in="${authorInstance?.events?}" var="e">
    <li><g:link controller="eventAdmin" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="eventAdmin" action="create" params="['author.id': authorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'event.label', default: 'Event')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="mainEvents"><g:message code="author.mainEvents.label" default="Main Events" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'mainEvents', 'errors')}">
                                    
<ul>
<g:each in="${authorInstance?.mainEvents?}" var="m">
    <li><g:link controller="mainEventAdmin" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="mainEventAdmin" action="create" params="['author.id': authorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'mainEvent.label', default: 'MainEvent')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="passwordExpired"><g:message code="author.passwordExpired.label" default="Password Expired" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'passwordExpired', 'errors')}">
                                    <g:checkBox name="passwordExpired" value="${authorInstance?.passwordExpired}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tasks"><g:message code="author.tasks.label" default="Tasks" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'tasks', 'errors')}">
                                    <g:select name="tasks" from="${pl.secret.Task.list()}" multiple="yes" optionKey="id" size="5" value="${authorInstance?.tasks*.id}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
