package pl.secret

import org.springframework.context.*
class UserTagLib implements ApplicationContextAware{
	static namespace = "mk"
	ApplicationContext applicationContext
	
	
	def isAdmin = {
		attrs, body ->
		def user = applicationContext.userService.loggedUser
		if (user.isAdmin()) {
			out << body()
		}
	}

	def isAuthor = {
		attrs, body ->
		def user = applicationContext.userService.loggedUser
		if (user.isAuthor()) {
			out << body()
		}
	}
}

