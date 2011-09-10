package pl.secret.author

import pl.secret.Task;
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_USER'])
class TaskAuthorController {

    static scaffold = Task
}
