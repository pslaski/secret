package pl.secret.admin
import pl.secret.Event;
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class EventAdminController {

    static scaffold = Event
}
