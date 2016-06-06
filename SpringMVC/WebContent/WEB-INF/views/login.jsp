<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all">
<title>Login</title>
</head>
<body>
	<div id="divLogin">
		<form:form action="logar" method="post" modelAttribute="login">
			<label>Username:</label><form:input path="username" type="text" />
			<label>Password:</label><form:input path="password" type="password" />
			
			<input type="submit" value="Login">
		</form:form>

		<h3>${error}</h3>
	</div>
</body>
</html>