<html>
	<head>
		<meta name="layout" content="admin" />
		<title><g:message code="admin.edit.admin" /></title>
	</head>
	<body>
		<g:set var="adminPageTitle" value="${message(code: 'admin.admin')}" scope="request" />
		<g:render template="/adminEdit/navigation" />
		<div id="admin">
			<div class="container" id="admin-edit">
				<h1>${message(code:'admin.edit.admin')}</h1>
				<g:if test="${flash.message}">
					<div class="message">${flash.message}</div>
				</g:if>
				<g:hasErrors bean="${admin}">
					<div class="errors">
						<g:renderErrors bean="${admin}" as="list" />
					</div>
				</g:hasErrors>
				<g:form method="post">
					<fieldset>
						<div class="${hasErrors(bean: admin, field: 'username', 'errors')}">
							<label for="username"><g:message code="username.label" default="Username" /></label>
							<g:textField name="username" value="${admin?.username}" class="text" />
						</div>
						<div class="summary">
							<g:hiddenField name="id" value="${admin?.id}" />
							<g:hiddenField name="version" value="${admin?.version}" />
							<button type="submit" class="submit" name="_action_update">
								<g:message code="default.button.update.label" />
							</button>
							<button type="submit" class="submit" name="_action_delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
								<g:message code="default.button.delete.label" />
							</button>
			
							<g:link class="editPassword" action="editPassword" id="${admin.id}"><button name="edit_password"><g:message code="default.editPassword.label" /></button></g:link>
					
						</div>
					</fieldset>
				</g:form>
			</div>
		</div>
	</body>
</html>
