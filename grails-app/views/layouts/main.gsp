<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <jq:resources/>
        <jqui:resources/>
        <script type="text/javascript" src="${resource(dir:'js/fullcalendar',file:'fullcalendar.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir:'js/fullcalendar',file:'gcal.js')}"></script>
        <g:javascript library="application" />
        <link rel="stylesheet" type="text/css" href="${resource(dir:'css/fullcalendar',file:'fullcalendar.css')}"/>
        <link rel="stylesheet" type="text/css" href="${resource(dir:'css/fullcalendar',file:'fullcalendar.print.css')}" media="print" />
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="secretLogo"><a href="${createLink(uri: '/')}"><img src="${resource(dir:'images',file:'secret_logo.png')}" alt="Grails" border="0" /></a></div>
        <g:layoutBody />
    </body>
</html>
