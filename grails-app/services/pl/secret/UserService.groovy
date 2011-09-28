package pl.secret

import pl.secret.security.*

class UserService {

	def springSecurityService
	
		def getLoggedUser() {
			if(springSecurityService.loggedIn) {
				def user = User.findByUsername(springSecurityService.principal?.username)
				if(user) {
					return user
				}
			}
			return null
		}
}
