<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form:form action="logar" method="post" modelAttribute="login">
		<table>
			<tr>
				<td>Username:</td>
				<td><form:input path="username" type="text"/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><form:input path="password" type="password" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input
					type="submit" value="Login"></td>
			</tr>
		</table>
	</form:form>
	
	<h3>${error}</h3>
	
</body>
</html>