		<ul class="navigation-blue" id="admin-navigation">
			<li>
				<g:link controller="login" action="index">
					<span class="left"></span>
					<span class="center">${message(code: 'default.home.label')}</span>
					<span class="right"></span>
				</g:link>
			</li>
			<li>
				<g:link action="list">
					<span class="left"></span>
					<span class="center">${message(code:'admin.list.admin')}</span>
					<span class="right"></span>
				</g:link>
			</li>
			<li>
				<g:link action="create">
					<span class="left"></span>
					<span class="center"><g:message code="admin.create.admin" /></span>
					<span class="right"></span>
				</g:link>
			</li>
		</ul>