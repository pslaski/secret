

<%@ page import="pl.secret.MainEvent" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'mainEvent.label', default: 'MainEvent')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${mainEventInstance}">
            <div class="errors">
                <g:renderErrors bean="${mainEventInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="mainEvent.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${mainEventInstance?.name}" />
                                </td>
                            </tr>
                        
                            
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="performer"><g:message code="mainEvent.performer.label" default="Performer" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'performer', 'errors')}">
                                    <g:select name="performer.id" from="${pl.secret.Author.list()}" optionKey="id" value="${mainEventInstance?.performer?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="mainEvent.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'description', 'errors')}">
                                    <g:textArea name="description" cols="40" rows="5" value="${mainEventInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="details"><g:message code="mainEvent.details.label" default="Details" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'details', 'errors')}">
                                    <g:textArea name="details" cols="40" rows="5" value="${mainEventInstance?.details}" />
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
                                    <label for="dateMainEventStart"><g:message code="mainEvent.dateMainEventStart.label" default="Date Main Event Start" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: mainEventInstance, field: 'dateMainEventStart', 'errors')}">
                                    <g:datePicker name="dateMainEventStart" precision="day" value="${mainEventInstance?.dateMainEventStart}"  />
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
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
