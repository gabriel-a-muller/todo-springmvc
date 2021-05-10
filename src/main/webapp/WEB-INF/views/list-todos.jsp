<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<div class="container">
	<table class="table table-striped">
		<caption>${name} <spring:message code="todo.caption"/></caption>
		<thead>
			<tr>
				<th><spring:message code="description.caption"/></th>
				<th><spring:message code="targetDate.caption"/></th>
				<th style="text-align:center"><spring:message code="status.caption"/></th>
				<th></th>
			</tr>
		</thead>
		
		<tbody>
			<!-- for(Todo todo:todos) -->
			<c:forEach items="${todos}" var="todo">
			<tr>
				<td>${todo.desc}</td>
				<td>
					<fmt:formatDate pattern="dd/MM/yyyy" value="${todo.targetDate}"/>
				</td>
				<td style="text-align:center">
					<c:set var="isiPad" value="value"/>
						<c:choose>
					   		<c:when test="${todo.done}">
					   			<input onclick="return false;" id = "isDone" name = "isDone" type = "checkbox" value = "Status" checked="checked"/>
					   		</c:when> 
					   		<c:otherwise>
					   			<input onclick="return false;" id = "isDone" name = "isDone" type = "checkbox" value = "Status"/>
					   		</c:otherwise>   
						</c:choose>
				</td>
				<td>
					<a class="btn btn-success"
					href="/update-todo?id=${todo.id}"><spring:message code="update.caption"/></a>
					<a class="btn btn-danger" 
					href="/delete-todo?id=${todo.id}"><spring:message code="delete.caption"/></a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<BR/>
	<div>
		<a class="btn btn-success" href="/add-todo"><spring:message code="add.caption"/></a>
	</div> 
</div>
<%@ include file="common/footer.jspf" %>