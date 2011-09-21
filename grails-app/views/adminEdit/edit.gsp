<%@ page import="pl.secret.Admin"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<g:set var="entityName"
	value="${message(code: 'admin.label', default: 'Admin')}" />
<title><g:message code="admin.edit.admin" /></title>
</head>
<body>
	<div class="nav">
		<span class="menuButton"><a class="home"
			href="${createLink(uri: '/')}"><g:message
					code="default.home.label" /> </a> </span> <span class="menuButton"><g:link
				class="list" action="list">
				<g:message code="admin.list.admin" />
			</g:link> </span>
	</div>
	<div class="body">
		<h1>
			<g:message code="admin.edit.admin" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${admin}">
			<div class="errors">
				<g:renderErrors bean="${admin}" as="list" />
			</div>
		</g:hasErrors>
		<div id="admin">
		
		
		<g:form action="update">
			<fieldset>
				<table>
					<tbody>

						<tr class="prop">
							<td valign="top" class="name"><label for="username"><g:message
										code="default.username.label" default="Username" /> </label>
							</td>
							<td valign="top"
								class="value ${hasErrors(bean: admin, field: 'username', 'errors')}">
								<div>
									<g:textField name="username" value="${admin.username}"
										class="text" />
									<span class="required">*</span>
								</div>
							</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name"><label for="name"><g:message
										code="default.name.label" default="Name" /> </label>
							</td>
							<td valign="top"
								class="value ${hasErrors(bean: admin, field: 'name', 'errors')}">
								<div>
									<g:textField name="name" value="${admin.name}" class="text" />
									<span class="required">*</span>
								</div>
							</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="surname"><label for="surname"><g:message
										code="default.surname.label" default="Surname" /> </label>
							</td>
							<td valign="top"
								class="value ${hasErrors(bean: admin, field: 'surname', 'errors')}">
								<div>
									<g:textField name="surname" value="${admin.surname}"
										class="text" />
									<span class="required">*</span>
								</div>
							</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name"><label for="accountExpired"><g:message
										code="author.accountExpired.label" default="Account Expired" />
							</label>
							</td>
							<td valign="top"
								class="value ${hasErrors(bean: admin, field: 'accountExpired', 'errors')}">
								<g:checkBox name="accountExpired"
									value="${admin.accountExpired}" />
							</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name"><label for="accountLocked"><g:message
										code="author.accountLocked.label" default="Account Locked" />
							</label>
							</td>
							<td valign="top"
								class="value ${hasErrors(bean: admin, field: 'accountLocked', 'errors')}">
								<g:checkBox name="accountLocked" value="${admin.accountLocked}" />
							</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name"><label for="enabled"><g:message
										code="author.enabled.label" default="Enabled" /> </label>
							</td>
							<td valign="top"
								class="value ${hasErrors(bean: admin, field: 'enabled', 'errors')}">
								<g:checkBox name="enabled" value="${admin.enabled}" />
							</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name"><label for="passwordExpired"><g:message
										code="default.passwordExpired.label" default="Password Expired" />
							</label>
							</td>
							<td valign="top"
								class="value ${hasErrors(bean: admin, field: 'passwordExpired', 'errors')}">
								<g:checkBox name="passwordExpired"
									value="${admin.passwordExpired}" />
							</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name"><label for="events"><g:message
										code="default.events.label" default="Events" />
							</label></td>
							<td valign="top"
								class="value ${hasErrors(bean: admin, field: 'events', 'errors')}">

								<ul>
									<g:each in="${admin.events}" var="e">
										<li><g:link controller="eventAdmin" action="show"
												id="${e.id}">
												${e?.encodeAsHTML()}
											</g:link>
										</li>
									</g:each>
								</ul> <g:link controller="eventAdmin" action="create"
									params="['author.id': admin.id]">
									${message(code: 'default.add.label', args: [message(code: 'event.label', default: 'Event')])}
								</g:link></td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name"><label for="mainEvents"><g:message
										code="default.mainEvents.label" default="Main Events" />
							</label></td>
							<td valign="top"
								class="value ${hasErrors(bean: admin, field: 'mainEvents', 'errors')}">

								<ul>
									<g:each in="${admin.mainEvents}" var="m">
										<li><g:link controller="mainEventAdmin" action="show"
												id="${m.id}">
												${m?.encodeAsHTML()}
											</g:link>
										</li>
									</g:each>
								</ul> <g:link controller="mainEventAdmin" action="create"
									params="['author.id': admin.id]">
									${message(code: 'default.add.label', args: [message(code: 'mainEvent.label', default: 'MainEvent')])}
								</g:link></td>
						</tr>

						 <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tasks"><g:message code="default.tasks.label" default="Tasks" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: admin, field: 'tasks', 'errors')}">
                                    <g:select name="tasks" from="${pl.secret.Task.list()}" multiple="yes" optionKey="id" size="5" value="${admin.tasks*.id}" />
                                </td>
                            </tr>

					</tbody>
				</table>
				</br> </br>
				<div>
					<g:message code="required.fields.label"
						default="* - Required fields" />
				</div>
				</br>
				<div class="summary">
				<g:hiddenField name="id" value="${admin?.id}" />
				<g:hiddenField name="version" value="${admin?.version}" />
					<button type="submit" class="submit" name="_action_update">
						<g:message code="default.button.update.label" />
					</button>
					<button type="submit" class="submit" name="_action_delete"
						onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
						<g:message code="default.button.delete.label" />
					</button>

					<g:link class="editPassword" action="editPassword" id="${admin.id}">
						<button name="edit_password">
							<g:message code="default.editPassword.label" />
						</button>
					</g:link>
				</div>
			</fieldset>
		</g:form>
	</div>
</body>
</html>
