

<%@ page import="pl.secret.Event" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
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
            <g:hasErrors bean="${eventInstance}">
            <div class="errors">
                <g:renderErrors bean="${eventInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="event.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${eventInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="event.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'description', 'errors')}">
                                    <g:textArea name="description" cols="40" rows="5" value="${eventInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="details"><g:message code="event.details.label" default="Details" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'details', 'errors')}">
                                    <g:textArea name="details" cols="40" rows="5" value="${eventInstance?.details}" />
                                </td>
                            </tr>
                        
                           
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="performer"><g:message code="event.performer.label" default="Performer" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'performer', 'errors')}">
                                    <g:select name="performer.id" from="${pl.secret.Author.list()}" optionKey="id" value="${eventInstance?.performer?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dateEventEnd"><g:message code="event.dateEventEnd.label" default="Date Event End" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'dateEventEnd', 'errors')}">
                                    <g:datePicker name="dateEventEnd" precision="day" value="${eventInstance?.dateEventEnd}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dateEventStart"><g:message code="event.dateEventStart.label" default="Date Event Start" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'dateEventStart', 'errors')}">
                                    <g:datePicker name="dateEventStart" precision="day" value="${eventInstance?.dateEventStart}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="event.state.label" default="State" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'state', 'errors')}">
                                    <g:select name="state" from="${pl.secret.StateType?.values()}" keys="${pl.secret.StateType?.values()*.name()}" value="${eventInstance?.state?.name()}"  />
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
