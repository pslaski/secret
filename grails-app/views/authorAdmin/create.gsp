<%@ page import="pl.secret.Author" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}" />
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
            <g:hasErrors bean="${authorInstance}">
            <div class="errors">
                <g:renderErrors bean="${authorInstance}" as="list" />
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
                          		<td valign="top" class="value">
                            		<g:hasErrors bean="${author}" field="username">
									<span class="error">
										<g:renderErrors bean="${author}" field="username"/>
									</span>
									</g:hasErrors>
									<div class="${hasErrors(bean: author, field: 'username', 'errors')}">
										<g:textField name="username" value="${author.username}" class="text" />
										<span class="required">*</span>
									</div>
								</td>
                        	</tr>
                        
                            <tr class="prop">	
                            	<td valign="top" class="name">
                            		<label for="password"><g:message code="default.password.label" default="Password"/></label>
                          		</td>
                          		<td valign="top" class="value">
                            		<g:hasErrors bean="${author}" field="password">
									<span class="error">
										<g:renderErrors bean="${author}" field="password"/>
									</span>
									</g:hasErrors>
									<div class="${hasErrors(bean: author, field: 'password', 'errors')}">
										<g:passwordField name="password" id="password" value="${author.password}" class="text" />
										<span class="required">*</span>
									</div>
								</td>
                        	</tr>
                            
                            <tr class="prop">	
                            	<td valign="top" class="name">
                            		<label for="repeatPassword"><g:message code="default.repeatPassword.label" default="Repeat Password"/></label>
                          		</td>
                          		<td valign="top" class="value">
                            		<g:hasErrors bean="${author}" field="repeatPassword">
									<span class="error">
										<g:renderErrors bean="${author}" field="repeatPassword"/>
									</span>
									</g:hasErrors>
									<div class="${hasErrors(bean: author, field: 'repeatPassword', 'errors')}">
										<g:passwordField name="repeatPassword" id="repeat-password" value="${author.repeatPassword}" class="text" />
										<span class="required">*</span>
									</div>
								</td>
                        	</tr>
                        
                             <tr class="prop">	
                            	<td valign="top" class="name">
                            		<label for="name"><g:message code="default.name.label" default="Name"/></label>
                          		</td>
                          		<td valign="top" class="value">
                            		<g:hasErrors bean="${author}" field="name">
									<span class="error">
										<g:renderErrors bean="${author}" field="name"/>
									</span>
									</g:hasErrors>
									<div class="${hasErrors(bean: author, field: 'name', 'errors')}">
										<g:textField name="name" value="${author.name}" class="text" />
										<span class="required">*</span>
									</div>
								</td>
                        	</tr>
                        
                            <tr class="prop">	
                            	<td valign="top" class="surname">
                            		<label for="surname"><g:message code="default.surname.label" default="Surname"/></label>
                          		</td>
                          		<td valign="top" class="value">
                            		<g:hasErrors bean="${author}" field="surname">
									<span class="error">
										<g:renderErrors bean="${author}" field="surname"/>
									</span>
									</g:hasErrors>
									<div class="${hasErrors(bean: author, field: 'surname', 'errors')}">
										<g:textField name="surname" value="${author.surname}" class="text" />
										<span class="required">*</span>
									</div>
								</td>
                        	</tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="accountExpired"><g:message code="author.accountExpired.label" default="Account Expired" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'accountExpired', 'errors')}">
                                    <g:checkBox name="accountExpired" value="${author.accountExpired}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="accountLocked"><g:message code="author.accountLocked.label" default="Account Locked" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'accountLocked', 'errors')}">
                                    <g:checkBox name="accountLocked" value="${author.accountLocked}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="enabled"><g:message code="author.enabled.label" default="Enabled" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'enabled', 'errors')}">
                                    <g:checkBox name="enabled" value="${author.enabled}" checked="checked" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="passwordExpired"><g:message code="author.passwordExpired.label" default="Password Expired" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: authorInstance, field: 'passwordExpired', 'errors')}">
                                    <g:checkBox name="passwordExpired" value="${author.passwordExpired}" />
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
