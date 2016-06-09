<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all">
<!-- JAVASCRIPTS -->

<script src="layout/scripts/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="layout/scripts/jquery.fitvids.min.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
<script src="layout/scripts/tabslet/jquery.tabslet.min.js"></script>

<title>Person List</title>

<style>
	table{
	color:black;
		}
</style>

</head>
<body id="top">

	<%@include file="header.jsp"%>

	<div class="wrapper">
		<div id="slider">
			<div id="slide-wrapper" class="rounded clear">

				<div align="center">
					<h1>Person List</h1>
					<div>
						<label>Search:</label> <input id="searchByName" />
						<button id="btnSearch">Search</button>
					</div>
					<table id="tblPerson" border="1">

						<th>Name</th>
						<th>Surname</th>

						<c:forEach var="person" items="${listPerson}">
							<tr>
								<td>${person.name}</td>
								<td>${person.surname}</td>
							</tr>
						</c:forEach>
					</table>

				</div>

			</div>

		</div>
	</div>

	<%@include file="footer.jsp"%>

	<script type="text/javascript">
		$(document).ready(function() {
			
			$('#searchByName').on('keyup',function(){
				var search = $('#searchByName').val();
				$.ajax({
		             url: "searchPersonByName",
		             method: "GET",
		             data: {
		            	 search: search
		             },
		             success: function(retorno){
		                 $("table#tblPerson").html(retorno);
		             }
		       });
				
				//window.location.href = "searchPersonByName?search=" + search;
			});
		});
	</script>
</body>
</html>