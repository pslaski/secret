package pl.secret.admin
import pl.secret.Author;
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class AuthorAdminController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	static defaultAction = "list"
	
	def springSecurityService
	def authorService
	
    def index = {
        redirect(action: "list", params: params)
    }

    def show = {
        def authorInstance = Author.get(params.id)
        if (!authorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'author.label', default: 'Author'), params.id])}"
            redirect(action: "list")
        }
        else {
            [authorInstance: authorInstance]
        }
    }
	
	def list = {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		return authorService.getAuthors()
	}
	
	def edit = {
		def user = Author.get(params.id)
		[author: user]
	}

	def update = {
		def user = Author.get(params.id)
		bindData(user, params, ['id'])
		try {
			authorService.updateWithoutRoles(user)
		} catch(e) {
			render view: "edit", model: [author: user]
		}
		flash.message = "admin.author.updated"
		redirect action: "list"
	}

	def editPassword = {
		[passwordCommand: new UserPassswordChangeCommand(id: params.int("id"))]
	}
	
	
	def delete = {
		def user = Author.get(params.id)
		authorService.deleteAuthor(user)
		flash.message = "admin.author.deleted"
		redirect action: 'list'
	}
	
	def changePassword = { UserPassswordChangeCommand passwordCommand ->
		if (passwordCommand.hasErrors()) {
			render view: "editPassword", model: [passwordCommand: passwordCommand]
			return
		}
		def user = Author.get(passwordCommand.id)
		user.password = springSecurityService.encodePassword(passwordCommand.password)
		try {
			authorService.updateWithoutRoles(user)
		} catch (e) {
			render view: 'editPassword', model: [passwordCommand: passwordCommand]
			return
		}
		redirect action: 'edit', id: passwordCommand.id
	}

	def create = {
		[author: new NewAuthorCommand()]
	}

	def save = { NewAuthorCommand command ->
		def author = new Author(command.properties)
		author.password = springSecurityService.encodePassword(author.password)
		author.validate()
		if(command.hasErrors() || author.hasErrors()) {
			author.errors.allErrors.each {
				command.errors.rejectValue(it.field, it.code, it.arguments, it.defaultMessage)
			}
			render view: 'create', model: [author: command]
			return
		}

		try {
			authorService.createAuthor(author)
		} catch (e) {
			log.error(e)
			render view: 'create', model: [admin: command]
			return
		}
		flash.message = 'admin.author.creationSuccess'
		redirect action: 'list'

	}
} 

class NewAuthorCommand {
	
		static constraints = {
			password blank: false, minSize: 6
			repeatPassword blank: false, minSize: 6,
			validator: {val, obj ->
				if (val != obj.password) {
					return "passwordsDoNotMatch"
				}
				return true
			}
		}
		String username
		String name
		String surname
		String password
		String repeatPassword
		boolean enabled = true
		boolean accountExpired
		boolean accountLocked
		boolean passwordExpired
	}
	
	// potem przenieść to do jakiejś innej paczki
	class UserPassswordChangeCommand {
		static constraints = {
			password blank: false, minSize: 6
			repeatPassword validator: {val, obj ->
				if (val != obj.password) {
					return "passwordsDoNotMatch"
				}
				return true
			}
		}
	
		String password
		String repeatPassword
		int id
	}
