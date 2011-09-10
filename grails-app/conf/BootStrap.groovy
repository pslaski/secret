
import pl.secret.security.Role
import pl.secret.security.User
import pl.secret.security.UserRole

class BootStrap {

	def springSecurityService

	def init = { servletContext ->

		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

		String password = springSecurityService.encodePassword('system')

		def admin = new User(username: 'secret', enabled: true, password: password).save(flush: true)

		UserRole.create admin, adminRole, true
	}
	def destroy = {
	}
}
