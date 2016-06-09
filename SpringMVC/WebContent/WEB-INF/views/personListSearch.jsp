<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<tr>
	<th>Name</th>
	<th>Surname</th>
</tr>
<c:forEach var="person" items="${listPerson}">
	<tr>
		<td>${person.name}</td>
		<td>${person.surname}</td>
	</tr>
</c:forEach>