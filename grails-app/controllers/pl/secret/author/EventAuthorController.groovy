package pl.secret.author
import pl.secret.Event;
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_USER'])
class EventAuthorController {

    static scaffold = Event
}
