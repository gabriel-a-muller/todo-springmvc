<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="container">
	<spring:message code="welcome.caption"/> ${name}. <BR/>
	
	<spring:message code="nowYouCan.caption"/> <a href="/list-todos"><spring:message code="manageTodos.caption"/></a>
</div>
<%@ include file="common/footer.jspf" %>