<%@ page import="pl.secret.Admin" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="layout" content="main" />
		<title><g:message code="admin.create.admin" /></title>
	</head>
	<body>
		 <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
		<g:set var="adminPageTitle" value="${message(code: 'admin.admin')}" scope="request" />
		<g:render template="/adminEdit/navigation" />
		<div id="admin">
			<div id="admin-admin-create" class="container">
				<h1>${message(code:'admin.create.admin')}</h1>
				<g:if test="${flash.message}">
					<strong>${flash.message}</strong>
				</g:if> 
				<g:form action="save">
					<fieldset>
					
				<div class=dialog>
				<table>
			
					<tr class="prop">
                            	<td valign="top" class=username>
					
						<g:hasErrors bean="${admin}" field="username">
							<span class="error">
								<g:renderErrors bean="${admin}" field="username"/>
							</span>
						</g:hasErrors>
						<div class="${hasErrors(bean: admin, field: 'username', 'errors')}">
							<label for="username"><g:message code="default.username.label" default="Username" /></label>
							<g:textField name="username" value="${admin?.username}" class="text" />
							<span class="required">*</span>
						</div>
						
						</td>
						</tr>
						<tr class="prop">
                            	<td valign="top" class=name>
						
						<g:hasErrors bean="${admin}" field="name">
							<span class="error">
								<g:renderErrors bean="${admin}" field="name"/>
							</span>
						</g:hasErrors>
						<div class="${hasErrors(bean: admin, field: 'name', 'errors')}">
							<label for="name"><g:message code="default.name.label" default="Name" /></label>
							<g:textField name="name" value="${admin?.name}" class="text" />
							<span class="required">*</span>
						</div>
						
						</td>
						</tr>
						
						<tr class="prop">
                            	<td valign="top" class=surname>
						
						<g:hasErrors bean="${admin}" field="surname">
							<span class="error">
								<g:renderErrors bean="${admin}" field="surname"/>
							</span>
						</g:hasErrors>
						<div class="${hasErrors(bean: admin, field: 'surname', 'errors')}">
							<label for="surname"><g:message code="default.surname.label" default="Surname" /></label>
							<g:textField name="surname" value="${admin?.surname}" class="text" />
							<span class="required">*</span>
						</div>
						
						</td>
						</tr>
						
						<tr class="prop">
                            	<td valign="top" class=password>
						
						<g:hasErrors bean="${admin}" field="password">
							<span class="error">
								<g:renderErrors bean="${admin}" field="password"/>
							</span>
						</g:hasErrors>
						<div class="${hasErrors(bean: admin, field: 'password', 'errors')}">
							<label for="password"><g:message code="default.password.label" default="Password"/></label>
							<g:passwordField name="password" id="password" value="${admin.password}" class="text" />
							<span class="required">*</span>
						</div>
						
						</td>
						</tr>
						
						<tr class="prop">
                            	<td valign="top" class=repeatPassword>
						
						<g:hasErrors bean="${admin}" field="repeatPassword">
							<span class="error">
								<g:renderErrors bean="${admin}" field="repeatPassword"/>
							</span>
						</g:hasErrors>
						<div class="${hasErrors(bean: admin, field: 'repeatPassword', 'errors')}">
							<label for="repeatPassword"><g:message code="default.repeatPassword.label" default="Repeat Password"/></label>
							<g:passwordField name="repeatPassword" id="repeat-password" value="${admin.repeatPassword}" class="text" />
							<span class="required">*</span>
						</div>
						
						</td>
						</tr>
						
						</table>
						</div>
						<div>
							<button type="submit" class="submit"><g:message code="default.button.create.label" /></button>
						</div>
					</fieldset>
				</g:form>
			</div>
		</div>
	</body>
</html>
