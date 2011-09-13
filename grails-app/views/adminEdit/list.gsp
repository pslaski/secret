<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="layout" content="admin" />
		<title><g:message code="admin.list.admin" /></title>
	</head>
	<body>
		<g:set var="adminPageTitle" value="${message(code: 'admin.admin')}" scope="request" />
		<g:render template="/adminEdit/navigation" />
		<div id="admin">
			<div class="container">
				<h1><g:message code="admin.list.admin" /></h1>
				<table>
					<thead>
						<tr>
							<g:sortableColumn property="username" title="${message(code: 'default.username.label')}" />
						</tr>
					</thead>
					<tbody>
						<g:each in="${admins}" status="i" var="admin">
							<tr class="${i % 2 ? 'even' : 'odd'}">
								<td>
									<g:link action="edit" id="${admin.id}">
										${admin.username}
									</g:link>
								</td>
							</tr>
						</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${adminsTotal}" />
				</div>
			</div>
		</div>
	</body>
</html>
