<ul class="navigation-admin" id="admin-navigation">
			<li>
				<g:link controller="adminEdit">
					<span class="center">${message(code: 'controller.adminEdit.label')}</span>
				</g:link>
			</li>
			<li>
				<g:link controller="authorAdmin">
					<span class="center">${message(code: 'controller.author.label')}</span>
				</g:link>
			</li>
			<li>	
				<g:link controller="eventAdmin">
					<span class="center">${message(code: 'controller.event.label')}</span>
				</g:link>
			</li>
			<li>	
				<g:link controller="mainEventAdmin">
					<span class="center">${message(code: 'controller.mainEvent.label')}</span>
				</g:link>
			</li>
			<li>	
				<g:link controller="taskAdmin">
					<span class="center">${message(code: 'controller.task.label')}</span>
				</g:link>
			</li>
			<li>
				<g:link controller="logout">
					<span class="center">${message(code: 'controller.logout.label') }</span>
				</g:link>
			</li>
</ul>