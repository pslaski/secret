package pl.secret
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class EventController {

    static scaffold = Event
}
