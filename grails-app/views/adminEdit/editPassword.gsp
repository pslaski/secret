
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="layout" content="admin" />
		<title><g:message code="admin.editPassword" /></title>
	</head>
	<body>
		<g:set var="adminPageTitle" value="${message(code: 'admin.admin')}" scope="request" />
		<g:render template="/adminEdit/navigation" />
		<div id="admin">
			<div class="container">
				<h1>${message(code: 'admin.editPassword')}</h1>
				<g:if test="${flash.message}">
					<div class="message">${flash.message}</div>
				</g:if>
				<g:form action="changePassword" >
					<div class="dialog">
						<table>
							<tbody>

								<tr class="prop">
									<td valign="top" class="name">
										<label for="password"><g:message code="default.password.label" /></label>
									</td>
									<td valign="top" >
										<g:passwordField name="password" id="password" value="${passwordCommand.password}" class="text" />
										<g:hasErrors bean="${passwordCommand}" field="password">
											<span class="error">
												<g:renderErrors bean="${passwordCommand}" field="password"/>
											</span>
										</g:hasErrors>
									</td>
								</tr>

								<tr class="prop">
									<td valign="top" class="name">
										<label for="repeatPassword"><g:message code="default.repeatPassword.label" /></label>
									</td>
									<td valign="top" >
										<g:passwordField name="repeatPassword" id="repeat-password" value="${passwordCommand.repeatPassword}" class="text" />
										<g:hasErrors bean="${passwordCommand}" field="repeatPassword">
											<span class="error">
												<g:renderErrors bean="${passwordCommand}" field="repeatPassword"/>
											</span>
										</g:hasErrors>
									</td>
								</tr>

							</tbody>
						</table>
					</div>
					<div class="hidden">
						<g:hiddenField name="id" value="${passwordCommand.id}" />
					</div>
					<div class="buttons">
						<span class="button"><g:submitButton name="update" class="update" value="${message(code: 'default.button.update.label')}" /></span>
					</div>
				</g:form>
			</div>
		</div>
	</body>
</html>
