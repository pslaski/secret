

<%@ page import="pl.secret.Task" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
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
            <g:hasErrors bean="${taskInstance}">
            <div class="errors">
                <g:renderErrors bean="${taskInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${taskInstance?.id}" />
                <g:hiddenField name="version" value="${taskInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="task.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${taskInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="description"><g:message code="task.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'description', 'errors')}">
                                    <g:textArea name="description" cols="40" rows="5" value="${taskInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="details"><g:message code="task.details.label" default="Details" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'details', 'errors')}">
                                    <g:textArea name="details" cols="40" rows="5" value="${taskInstance?.details}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="authorName"><g:message code="task.authorName.label" default="Author Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'authorName', 'errors')}">
                                    <g:textField name="authorName" value="${taskInstance?.authorName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dateDone"><g:message code="task.dateDone.label" default="Date Done" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'dateDone', 'errors')}">
                                    <g:datePicker name="dateDone" precision="day" value="${taskInstance?.dateDone}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="deadline"><g:message code="task.deadline.label" default="Deadline" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'deadline', 'errors')}">
                                    <g:datePicker name="deadline" precision="day" value="${taskInstance?.deadline}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="performers"><g:message code="task.performers.label" default="Performers" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'performers', 'errors')}">
                                    
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="state"><g:message code="task.state.label" default="State" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'state', 'errors')}">
                                    <g:select name="state" from="${pl.secret.StateType?.values()}" keys="${pl.secret.StateType?.values()*.name()}" value="${taskInstance?.state?.name()}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="type"><g:message code="task.type.label" default="Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: taskInstance, field: 'type', 'errors')}">
                                    <g:select name="type" from="${pl.secret.TaskType?.values()}" keys="${pl.secret.TaskType?.values()*.name()}" value="${taskInstance?.type?.name()}"  />
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
