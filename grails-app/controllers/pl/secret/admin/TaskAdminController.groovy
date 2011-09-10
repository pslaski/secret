package pl.secret.admin
import pl.secret.Task;
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class TaskAdminController {

    static scaffold = Task
}
