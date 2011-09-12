package pl.secret

import pl.secret.security.*

class AdminService {

   // static transactional = true

  //  def serviceMethod() {
  //  }
	
	def authorService
	
	def disableAuthors(def authorsList) {
		for (def authorId in authorsList) {
			def author = Author.get(authorId)
			author.setEnabled false
		}
	}
	def enableAuthors(def authorsList) {
		for (def authorId in authorsList) {
			def author = Author.get(authorId)
			author.setEnabled true
		}
	}
	
	def updateAuthor(Author author) {
		authorService.updateWithoutRoles(author)
	}
	
	def deleteAuthors(def authorsList) {
		for (def authorId in authorsList) {
			def author = Author.get(authorId)
			authorService.delete(author)
		}
	}
	
	/*
	def removeAssociations(def user) {
		def operatedAuthors = Author.findAllByOperatedBy(user)
		for (def owner in operatedAuthors) {
			owner.operatedBy = null
			owner.save(flush:true)
		}
		
		def createdAuthors = Author.findAllByCreatedBy(user)
		for (def owner in createdAuthors) {
			owner.createdBy = null
			owner.save(flush: true)
		}
	} */
	
	def updateAdmin(def admin) {
		admin.save()
	}

	def createAdmin(def admin) {
		admin.save()
		def role = Role.findByAuthority("ROLE_ADMIN")
		UserRole.create(admin, role)
	}

	def deleteAdmin(def admin) {
		//removeAssociations(admin)
		UserRole.removeAll admin
		admin.delete()
	}

	def getAdmins(def params) {
		def role = Role.findByAuthority("ROLE_ADMIN")
		def admins = UserRole.findAllByRole(role, params).collect { it.user }
		return [admins: admins, adminsTotal: UserRole.findAllByRole(role).size()]
	}
	
}
