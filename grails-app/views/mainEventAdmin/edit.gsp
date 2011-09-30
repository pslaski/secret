

<%@ page import="pl.secret.MainEvent" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'mainEvent.label', default: 'MainEvent')}" />
        <title><g:message code="mainEvent.edit.label"/></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="mainEvent.list.label"/></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="mainEvent.create.label"/></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="mainEvent.edit.label"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${mainEventInstance}">
            <div class="errors">
                <g:renderErrors bean="${mainEventInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${mainEventInstance?.id}" />
                <g:hiddenField name="version" value="${mainEventInstance?.version}" />
                <div class="dialog">
                <fieldset>
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="event.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'name', 'errors')}">
                                <%--    <g:textField name="name" value="${mainEventInstance?.name}" /> --%>
                                    <input type="text" name="name" value="${mainEventInstance?.name}"
									size=40 />       								
                               		<span class="required">*</span>
                                </td>
                            </tr>                                               
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="performer"><g:message code="event.performer.label" default="Performer" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'performer', 'errors')}">
                                    <g:select name="performer.id" from="${pl.secret.Author.list()}" optionKey="id" value="${mainEventInstance?.performer?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="description"><g:message code="event.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'description', 'errors')}">
                                    <g:textArea name="description" cols="40" rows="5" value="${mainEventInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="details"><g:message code="event.details.label" default="Details" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'details', 'errors')}">
                                    <g:textArea name="details" cols="40" rows="5" value="${mainEventInstance?.details}" />
                                </td>
                            </tr>
                                                	
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dateMainEventStart"><g:message code="mainEvent.dateMainEventStart.label" default="Date Main Event Start" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'dateMainEventStart', 'errors')}">
                                    <g:datePicker name="dateMainEventStart" precision="day" value="${mainEventInstance?.dateMainEventStart}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dateMainEventEnd"><g:message code="mainEvent.dateMainEventEnd.label" default="Date Main Event End" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'dateMainEventEnd', 'errors')}">
                                    <g:datePicker name="dateMainEventEnd" precision="day" value="${mainEventInstance?.dateMainEventEnd}"  />
                                </td>
                            </tr>
                                                
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="events"><g:message code="mainEvent.events.label" default="Events" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'events', 'errors')}">
                                    <g:select name="events" from="${pl.secret.Event.list()}" multiple="yes" optionKey="id" size="5" value="${mainEventInstance?.events*.id}" />
                                </td>
                            </tr>                        
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tasks"><g:message code="mainEvent.tasks.label" default="Tasks" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'tasks', 'errors')}">
                                    <g:select name="tasks" from="${pl.secret.Task.list()}" multiple="yes" optionKey="id" size="5" value="${mainEventInstance?.tasks*.id}" />
                                </td>
                            </tr>
                                                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="state"><g:message code="mainEvent.state.label" default="State" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'state', 'errors')}">
                                    <g:select name="state" from="${pl.secret.StateType?.values()}" keys="${pl.secret.StateType?.values()*.name()}" value="${mainEventInstance?.state?.name()}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </br>
                    </br>
                    <div>
                    	<g:message code="required.fields.label" default="* - Required fields" />
                    </div>
                    </br> 
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
                </fieldset>
                </div>
            </g:form>
        </div>
    </body>
</html>
