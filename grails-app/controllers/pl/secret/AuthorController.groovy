package pl.secret
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class AuthorController {

   	static scaffold = Author
}
