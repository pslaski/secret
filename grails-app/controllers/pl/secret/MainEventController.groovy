package pl.secret
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class MainEventController {

    static scaffold = MainEvent
}
