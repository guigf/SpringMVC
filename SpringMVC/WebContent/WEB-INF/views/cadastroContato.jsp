<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div align="center">
	<h1>New/Edit Contact</h1>
	<form:form action="saveContact" method="post" modelAttribute="contact">
		<table>
			<form:hidden path="id" />
			<tr>
				<td>Name:</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><form:input path="address" /></td>
			</tr>
			<tr>
				<td>Telephone:</td>
				<td><form:input path="telephone" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><a href="cancelSaving"
					id="btnNewContact" class="btn btnRed">Cancel</a> <input
					type="submit" value="Save" class="btnSaveContact"></td>
			</tr>
		</table>
		<div>
			<!-- <input type="submit"value="Save"> -->
		</div>
	</form:form>
</div>