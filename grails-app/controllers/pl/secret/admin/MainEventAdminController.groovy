package pl.secret.admin
import pl.secret.MainEvent;
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class MainEventAdminController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [mainEventInstanceList: MainEvent.list(params), mainEventInstanceTotal: MainEvent.count()]
    }

    def create = {
        def mainEventInstance = new MainEvent()
        mainEventInstance.properties = params
        return [mainEventInstance: mainEventInstance]
    }

    def save = {
        def mainEventInstance = new MainEvent(params)
        if (mainEventInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'mainEvent.label', default: 'MainEvent'), mainEventInstance.id])}"
            redirect(action: "show", id: mainEventInstance.id)
        }
        else {
            render(view: "create", model: [mainEventInstance: mainEventInstance])
        }
    }

    def show = {
        def mainEventInstance = MainEvent.get(params.id)
        if (!mainEventInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'mainEvent.label', default: 'MainEvent'), params.id])}"
            redirect(action: "list")
        }
        else {
            [mainEventInstance: mainEventInstance]
        }
    }

    def edit = {
        def mainEventInstance = MainEvent.get(params.id)
        if (!mainEventInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'mainEvent.label', default: 'MainEvent'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [mainEventInstance: mainEventInstance]
        }
    }

    def update = {
        def mainEventInstance = MainEvent.get(params.id)
        if (mainEventInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (mainEventInstance.version > version) {
                    
                    mainEventInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'mainEvent.label', default: 'MainEvent')] as Object[], "Another user has updated this MainEvent while you were editing")
                    render(view: "edit", model: [mainEventInstance: mainEventInstance])
                    return
                }
            }
            mainEventInstance.properties = params
            if (!mainEventInstance.hasErrors() && mainEventInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'mainEvent.label', default: 'MainEvent'), mainEventInstance.id])}"
                redirect(action: "show", id: mainEventInstance.id)
            }
            else {
                render(view: "edit", model: [mainEventInstance: mainEventInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'mainEvent.label', default: 'MainEvent'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def mainEventInstance = MainEvent.get(params.id)
        if (mainEventInstance) {
            try {
                mainEventInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'mainEvent.label', default: 'MainEvent'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'mainEvent.label', default: 'MainEvent'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'mainEvent.label', default: 'MainEvent'), params.id])}"
            redirect(action: "list")
        }
    }
}
