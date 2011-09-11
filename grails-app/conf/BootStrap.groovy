import pl.secret.*
import pl.secret.security.*
import org.codehaus.groovy.grails.commons.*
//import org.codehaus.groovy.grails.plugins.springsecurity.SecurityFilterPosition
//import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils 

class BootStrap {

	def adminService
	def springSecurityService
	//def concurrentSessionController
	//def securityContextPersistenceFilter
	
	def init = { servletContext ->
		
	//  Nie wiem po co to, nie dziala tez - dorian
	//	securityContextPersistenceFilter.forceEagerSessionCreation = true
	//	SpringSecurityUtils.clientRegisterFilter('concurrentSessionFilter', SecurityFilterPosition.CONCURRENT_SESSION_FILTER)
		
		setupRoles()
		
	}
	
	def destroy = {
	}
	
	private createAdmin(def roles) {
		if ( !UserRole.findByRole(roles['ROLE_ADMIN'])?.user ) {
			def adminConfig = ConfigurationHolder.config.secret.admin
			def admin = new Admin(
				username: adminConfig.username,
				name: adminConfig.name,
				surname: adminConfig.surname,
				password: springSecurityService.encodePassword(adminConfig.password),
				enabled: true
			)
			adminService.createAdmin(admin)
		}
	}
	
	private setupRoles() {
		def roles = [:]
		['ROLE_USER', 'ROLE_ADMIN'].each {
			roles[it] = Role.findByAuthority(it) ?: new Role(authority: it).save(flush: true)
		}
		createAdmin(roles)
	}	
}
