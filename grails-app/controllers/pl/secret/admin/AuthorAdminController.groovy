package pl.secret.admin
import pl.secret.Author;
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class AuthorAdminController {

    static scaffold = Author
}
