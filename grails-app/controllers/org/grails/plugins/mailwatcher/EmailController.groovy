package org.grails.plugins.mailwatcher

import org.springframework.dao.DataIntegrityViolationException

class EmailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }


    def list() {
        flash.message = "To Test Mail Watcher Plugin, Send Email to grails.mail.watcher@gmail.com. And It will be listed here"
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [emailInstanceList: Email.list(params), emailInstanceTotal: Email.count()]
    }



    def show() {
        def emailInstance = Email.get(params.id)
        if (!emailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'email.label', default: 'Email'), params.id])
            redirect(action: "list")
            return
        }

        [emailInstance: emailInstance]
    }



    def delete() {
        def emailInstance = Email.get(params.id)
        if (!emailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'email.label', default: 'Email'), params.id])
            redirect(action: "list")
            return
        }

        try {
            emailInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'email.label', default: 'Email'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'email.label', default: 'Email'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
