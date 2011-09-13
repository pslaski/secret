package pl.secret

import pl.secret.security.*
import java.security.SecureRandom

class AuthorService {

	//   static transactional = true

	//  def serviceMethod() {
	//   }

	static singleton = true

	def springSecurityService
	def generator = new SecureRandom()

	AuthorService() {
		generator.setSeed(new Date().time)
	}

	def create(Author author) {
		author.save()

		def role = Role.findByAuthority("ROLE_USER")
		UserRole.create author, role, true
		author.save()
		return author
	}

	def updateWithoutRoles(User author) {
		author.save()
		author
	}

	def delete(Author author) {
		// tu wyrzucanie powiazan z autorem
		UserRole.removeAll author
		author.delete(flush: true)
	}

	def resetPassword(Author author) {
		def newPassword = new BigInteger(131, generator).toString(32)
		author.password = springSecurityService.encodePassword(newPassword)
		author.save()
		return newPassword
	}

}
