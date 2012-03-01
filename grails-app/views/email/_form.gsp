<%@ page import="org.grails.plugins.mailwatcher.Email" %>



<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'sender', 'error')} required">
	<label for="sender">
		<g:message code="email.sender.label" default="Sender" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sender" required="" value="${emailInstance?.sender}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'recipients', 'error')} required">
	<label for="recipients">
		<g:message code="email.recipients.label" default="Recipients" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'ccRecipients', 'error')} ">
	<label for="ccRecipients">
		<g:message code="email.ccRecipients.label" default="Cc Recipients" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'bccRecipients', 'error')} ">
	<label for="bccRecipients">
		<g:message code="email.bccRecipients.label" default="Bcc Recipients" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="email.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subject" required="" value="${emailInstance?.subject}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'body', 'error')} required">
	<label for="body">
		<g:message code="email.body.label" default="Body" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="body" required="" value="${emailInstance?.body}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'isRead', 'error')} ">
	<label for="isRead">
		<g:message code="email.isRead.label" default="Is Read" />
		
	</label>
	<g:checkBox name="isRead" value="${emailInstance?.isRead}" />
</div>

