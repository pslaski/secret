
<%@ page import="pl.secret.MainEvent" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'mainEvent.label', default: 'MainEvent')}" />
        <title><g:message code="mainEvent.show.label"/></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="mainEvent.list.label"/></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="mainEvent.create.label"/></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="mainEvent.show.label"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mainEvent.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mainEventInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="event.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mainEventInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="event.authorName.label" default="Author Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mainEventInstance, field: "authorName")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="event.performer.label" default="Performer" /></td>
                            
                            <td valign="top" class="value"><g:link controller="authorAdmin" action="show" id="${mainEventInstance?.performer?.id}">${mainEventInstance?.performer?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="event.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mainEventInstance, field: "description")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="event.details.label" default="Details" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: mainEventInstance, field: "details")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="event.dateCreated.label" default="Date Created" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${mainEventInstance?.dateCreated}" /></td>
                            
                        </tr>
                    
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mainEvent.dateMainEventStart.label" default="Date Main Event Start" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${mainEventInstance?.dateMainEventStart}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mainEvent.dateMainEventEnd.label" default="Date Main Event End" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${mainEventInstance?.dateMainEventEnd}" /></td>
                            
                        </tr>
                    
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mainEvent.events.label" default="Events" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${mainEventInstance.events}" var="e">
                                    <li><g:link controller="eventAdmin" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mainEvent.state.label" default="State" /></td>
                            
                            <td valign="top" class="value">${mainEventInstance?.state?.encodeAsHTML()}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="mainEvent.tasks.label" default="Tasks" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${mainEventInstance.tasks}" var="t">
                                    <li><g:link controller="taskAdmin" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${mainEventInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
