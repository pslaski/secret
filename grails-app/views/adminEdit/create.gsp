<%@ page import="pl.secret.Admin" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'admin.label', default: 'Admin')}" />
        <title><g:message code="admin.create.admin"/></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="admin.list.admin"/></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="admin.create.admin"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${admin}">
            <div class="errors">
                <g:renderErrors bean="${admin}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
            	<fieldset>             
                    <table>
                        <tbody>
                        
                            <tr class="prop">	
                            	<td valign="top" class="name">
                            		<label for="username"><g:message code="default.username.label" default="Username"/></label>
                          		</td>
                          		<td valign="top" class="value ${hasErrors(bean: admin, field: 'username', 'errors')}">
									<div>
										<g:textField name="username" value="${admin.username}" class="text" />
										<span class="required">*</span>
									</div>
								</td>				
                        	</tr>
                        
                            <tr class="prop">	
                            	<td valign="top" class="name">
                            		<label for="password"><g:message code="default.password.label" default="Password"/></label>
                          		</td>
                          		<td valign="top" class="value ${hasErrors(bean: admin, field: 'password', 'errors')}">
									<div>
										<g:passwordField name="password" id="password" value="${admin.password}" class="text" />
										<span class="required">*</span>
									</div>
								</td>
                        	</tr>
                            
                            <tr class="prop">	
                            	<td valign="top" class="name">
                            		<label for="repeatPassword"><g:message code="default.repeatPassword.label" default="Repeat Password"/></label>
                          		</td>
                          		<td valign="top" class="value ${hasErrors(bean: admin, field: 'repeatPassword', 'errors')}">
									<div>
										<g:passwordField name="repeatPassword" id="repeat-password" value="${admin.repeatPassword}" class="text" />
										<span class="required">*</span>
									</div>
								</td>
                        	</tr>
                        
                             <tr class="prop">	
                            	<td valign="top" class="name">
                            		<label for="name"><g:message code="default.name.label" default="Name"/></label>
                          		</td>
                          		<td valign="top" class="value ${hasErrors(bean: admin, field: 'name', 'errors')}">
									<div>
										<g:textField name="name" value="${admin.name}" class="text" />
										<span class="required">*</span>
									</div>
								</td>
                        	</tr>
                        
                            <tr class="prop">	
                            	<td valign="top" class="surname">
                            		<label for="surname"><g:message code="default.surname.label" default="Surname"/></label>
                          		</td>
                          		<td valign="top" class="value ${hasErrors(bean: admin, field: 'surname', 'errors')}">
									<div>
										<g:textField name="surname" value="${admin.surname}" class="text" />
										<span class="required">*</span>
									</div>
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
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
