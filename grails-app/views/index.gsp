<html>
<head>
<title>Secret</title>
<meta name="layout" content="main" />
<style type="text/css" media="screen">
#nav {
	margin-top: 20px;
	margin-left: 30px;
	width: 228px;
	float: left;
}

.homePagePanel * {
	margin: 0px;
}

.homePagePanel .panelBody ul {
	list-style-type: none;
	margin-bottom: 10px;
}

.homePagePanel .panelBody h1 {
	text-transform: uppercase;
	font-size: 1.1em;
	margin-bottom: 10px;
}

.homePagePanel .panelBody {
	background: url(images/leftnav_midstretch.png) repeat-y top;
	margin: 0px;
	padding: 15px;
}

.homePagePanel .panelBtm {
	background: url(images/leftnav_btm.png) no-repeat top;
	height: 20px;
	margin: 0px;
}

.homePagePanel .panelTop {
	background: url(images/leftnav_top.png) no-repeat top;
	height: 11px;
	margin: 0px;
}

h2 {
	margin-top: 15px;
	margin-bottom: 15px;
	font-size: 1.2em;
}

#pageBody {
	margin-left: 280px;
	margin-right: 20px;
}
</style>
</head>
<body>
	<div id="nav">
		<div class="homePagePanel">
			<div class="panelTop"></div>
			<div class="panelBody">
			<h1>Panel sterujący</h1>
				<mk:isAdmin>
					<g:render template="/layouts/adminPanel" />
				</mk:isAdmin>
				<mk:isAuthor>
					<g:render template="/layouts/authorPanel"/>
				</mk:isAuthor>
				<%--
				<h1>Installed Plugins</h1>
				<ul>
					<g:set var="pluginManager"
						value="${applicationContext.getBean('pluginManager')}"></g:set>

					<g:each var="plugin" in="${pluginManager.allPlugins}">
						<li>
							${plugin.name} - ${plugin.version}
						</li>
					</g:each>

				</ul>--%>
			</div>
			<div class="panelBtm"></div>
		</div>
	</div>
	<div id="pageBody">
		<mk:isAdmin>
			<h1>Witaj, zalogowałeś się jako administrator</h1>
		</mk:isAdmin>
		<mk:isAuthor>
			<h1>Witaj, zalogowałeś się jako autor</h1>
		</mk:isAuthor>
		<p>W aplikacji secret możesz zarządzać bla bla bla..lorem ipsum</p>
		
		<fullcal:calendar id="cal">
    header: { left: "prev, today, next", center: "title", right: "month, agendaWeek, agendaDay" },
    columnFormat: { week: 'ddd d/M' },
    timeFormat: 'HH:mm{ - HH:mm}',
    editable: true,
    firstDay: 1,
    weekMode: 'liquid'
</fullcal:calendar>
	</div>
</body>
</html>
