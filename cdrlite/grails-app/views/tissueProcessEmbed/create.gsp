<%@ page import="nci.bbrb.cdr.forms.TissueProcessEmbed" %>
<g:set var="bodyclass" value="tissueprocess create" scope="request"/>
<html>
    <head>
        <meta name="layout" content="cahubTemplate"/>
        <g:set var="entityName" value="${nci.bbrb.cdr.forms.TissueProcessEmbedController.CDR_FORM_NAME}"/>
        <g:set var="caseId" value="${tissueProcessEmbedInstance?.caseRecord?.caseId}"/>
        <title><g:message code="default.create.label" args="[entityName]"/></title>
    </head>
    <body>
      <div id="nav" class="clearfix">
          <div id="navlist">
            <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        </div>
      </div>
      <div id="container" class="clearfix">
            
            <h1><g:message code="default.create.label.with.case.id" args="[entityName,caseId]"/></h1> 
            <g:if test="${flash.message}">
                <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${tissueProcessEmbedInstance}">
            <div class="errors">
                <g:renderErrors bean="${tissueProcessEmbedInstance}" as="list"/>
            </div>
            </g:hasErrors>
            <g:form action="save">
                <div class="dialog">
                    <g:hiddenField name="caseRecord.id" value="${params.caseRecord?.id}"/>
                    %{-- <g:hiddenField name="formMetadata.id" value="${params.formMetadata.id}"/> --}%
                    <g:render template="formFieldsInc"/>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.save.label', default: 'Save')}"/></span>
                    <span class="button"><input class="delete" type="button" value="Cancel" onclick="if(confirm('${message(code: 'default.button.cancel.confirm.message', default: 'Discard unsaved data?')}'))history.go(-1);"></input></span>
                </div>
            </g:form>
        </div>
    </body>
</html>