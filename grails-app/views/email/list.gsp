<%@ page import="org.grails.plugins.mailwatcher.Email" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="bootstrap">
    <meta http-equiv="refresh" content="10"/>
    <g:set var="entityName" value="${message(code: 'email.label', default: 'Email')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>



<div id="list-email"  role="main">
    <g:if test="${flash.message}">
        <div class="alert alert-info" role="status">${flash.message}</div>
    </g:if>
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>

    <table class="table table-striped table-bordered table-condensed">
        <thead>
        <tr>

            <g:sortableColumn property="sender" title="${message(code: 'email.sender.label', default: 'Sender')}"/>

            <g:sortableColumn property="subject" title="${message(code: 'email.subject.label', default: 'Subject')}"/>

            <g:sortableColumn property="subject" title="Recipients"/>

            <g:sortableColumn property="subject" title="CC Recipients"/>

            <g:sortableColumn property="subject" title="BCC Recipients"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${emailInstanceList?.reverse()}" status="i" var="emailInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${emailInstance.id}">${fieldValue(bean: emailInstance, field: "sender")}</g:link></td>

                <td>${fieldValue(bean: emailInstance, field: "subject")}</td>


                <td>${emailInstance.recipients.join(", ")}</td>

                <td>${emailInstance.ccRecipients.join(", ")}</td>

                <td>${emailInstance.bccRecipients.join(", ")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>


    <div class="pagination">
        <g:paginate total="${emailInstanceTotal}"/>
    </div>
</div>
</body>
</html>
