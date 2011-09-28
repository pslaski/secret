<ul class="navigation-admin" id="admin-navigation">
			<li>
				<g:link controller="eventAuthor">
					<span class="center">${message(code: 'controller.event.label')}</span>
				</g:link>
			</li>
			<li>
				<g:link controller="taskAuthor">
					<span class="center">${message(code: 'controller.task.label')}</span>
				</g:link>
			</li>
			<li>
				<g:link controller="logout">
					<span class="center">${message(code: 'controller.logout.label') }</span>
				</g:link>
			</li>
</ul>