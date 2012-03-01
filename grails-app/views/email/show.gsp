
<%@ page import="org.grails.plugins.mailwatcher.Email" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'email.label', default: 'Email')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body >
		<div id="show-email"  role="main">
			<g:if test="${flash.message}">
                <div class="alert alert-info" role="status">${flash.message}</div>
            </g:if>

            <h1><g:message code="default.show.label" args="[entityName]" /></h1>

            <div class="well">
            <ol>
			
				<g:if test="${emailInstance?.sender}">
				<li class="fieldcontain">
					<span id="sender-label" class="property-label"><g:message code="email.sender.label" default="Sender" /></span>
					
						<span class="property-value" aria-labelledby="sender-label"><g:fieldValue bean="${emailInstance}" field="sender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.recipients}">
				<li class="fieldcontain">
					<span id="recipients-label" class="property-label"><g:message code="email.recipients.label" default="Recipients" /></span>

						<span class="property-value" aria-labelledby="recipients-label"><g:fieldValue bean="${emailInstance}" field="recipients"/></span>

				</li>
				</g:if>
			
				<g:if test="${emailInstance?.ccRecipients}">
				<li class="fieldcontain">
					<span id="ccRecipients-label" class="property-label"><g:message code="email.ccRecipients.label" default="Cc Recipients" /></span>
					
						<span class="property-value" aria-labelledby="ccRecipients-label"><g:fieldValue bean="${emailInstance}" field="ccRecipients"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.bccRecipients}">
				<li class="fieldcontain">
					<span id="bccRecipients-label" class="property-label"><g:message code="email.bccRecipients.label" default="Bcc Recipients" /></span>
					
						<span class="property-value" aria-labelledby="bccRecipients-label"><g:fieldValue bean="${emailInstance}" field="bccRecipients"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="email.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${emailInstance}" field="subject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.body}">
				<li class="fieldcontain">
					<span id="body-label" class="property-label"><g:message code="email.body.label" default="Body" /></span>
					
						<span class="property-value" aria-labelledby="body-label"><g:fieldValue bean="${emailInstance}" field="body"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="email.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${emailInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.isRead}">
				<li class="fieldcontain">
					<span id="isRead-label" class="property-label"><g:message code="email.isRead.label" default="Is Read" /></span>
					
						<span class="property-value" aria-labelledby="isRead-label"><g:formatBoolean boolean="${emailInstance?.isRead}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="email.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${emailInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>

			<g:form>
                <fieldset class="form-actions">
					<g:hiddenField name="id" value="${emailInstance?.id}" />
					<g:actionSubmit class="btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
		</div>
	</body>
</html>
