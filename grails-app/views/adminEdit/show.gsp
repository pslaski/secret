<%@ page import="pl.secret.Admin" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'admin.label', default: 'Admin')}" />
        <title><g:message code="admin.show.admin"/></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="admin.list.admin"/></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="admin.create.admin"/></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="admin.show.admin"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: admin, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="default.username.label" default="Userame" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: admin, field: "username")}</td>
                            
                        </tr>
                    	<%-- 
                    	 <tr class="prop">
                            <td valign="top" class="name"><g:message code="default.password.label" default="Password" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: admin, field: "password")}</td>
                            
                        </tr>
                    	--%>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="default.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: admin, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="default.surname.label" default="Surname" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: admin, field: "surname")}</td>
                            
                        </tr>
                                            
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="default.accountLocked.label" default="Account Locked" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${admin.accountLocked}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="default.enabled.label" default="Enabled" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${admin.enabled}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="default.events.label" default="Events" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${admin.events}" var="e">
                                    <li><g:link controller="event" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="default.mainEvents.label" default="Main Events" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${admin.mainEvents}" var="m">
                                    <li><g:link controller="mainEvent" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="author.tasks.label" default="Tasks" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${admin.tasks}" var="t">
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
                    <g:hiddenField name="id" value="${admin.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
