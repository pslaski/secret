package pl.secret.admin
import pl.secret.MainEvent;
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class MainEventAdminController {

    static scaffold = MainEvent
}
