<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Contact</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	
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

</head>
<body id="top">

	<%@include file="/WEB-INF/views/Includes/header.jsp"%>

	<div class="wrapper">
		<div id="slider">
			<div id="slide-wrapper" class="rounded clear">

				<div align="center">
					<h1>Contact List</h1>
					<h3>
						<!-- <a href="newContact" id="btnNewContact" class="btn btnBlack">New Contact</a>  -->
						<a href="##" id="btnNewContact" class="btn btnBlack">New
							Contact</a>
					</h3>
					<table border="1">

						<th>No</th>
						<th>Name</th>
						<th>Email</th>
						<th>Address</th>
						<th>Telephone</th>
						<th>Action</th>

						<c:forEach var="contact" items="${listContact}" varStatus="status">
							<tr>
								<td>${status.index + 1}</td>
								<td>${contact.name}</td>
								<td>${contact.email}</td>
								<td>${contact.address}</td>
								<td>${contact.telephone}</td>
								<td>
									<%-- <a href="editContact?id=${contact.id}" class="btn btnBlue">Edit</a> --%>
									<a href="##" meta-id="${contact.id}"
									class="btn btnBlue btnEditContact">Edit</a>
									&nbsp;&nbsp;&nbsp;&nbsp; <a
									href="deleteContact?id=${contact.id}" class="btn btnRed">Delete</a>
								</td>

							</tr>
						</c:forEach>
					</table>

					<div id="mdlContact" title="Contato"></div>

				</div>

			</div>

		</div>
	</div>

	<%@include file="/WEB-INF/views/Includes/footer.jsp"%>

	<script>
		$(document).ready(function() {
			$('#btnNewContact').on('click', function() {
				$.get("newContact", function(retorno) {
					$("#mdlContact").html(retorno);
					$("#mdlContact").dialog({
						height : 255,
						width : 500,
						resizable : false,
						draggable : false,
						modal : true,
						at : "center",
						of : window,
						show : {
							effect : "blind",
							duration : 800
						//easing : 'easeInOutBack' 
						},
						open: function() {
					        $('.ui-widget-overlay').addClass('custom-overlay');
					    },
					    close: function() {
					        $('.ui-widget-overlay').removeClass('custom-overlay');
					    },
					    title: "New Contact"
					//easeInOutElastic
					});
				});
			});

			$('.btnEditContact').on('click', function() {
				var id = $(this).attr('meta-id');
				$.get("editContact?id=" + id, function(retorno) {
					$("#mdlContact").html(retorno);
					$("#mdlContact").dialog({
						height : 255,
						width : 500,
						resizable : false,
						draggable : false,
						modal : true,
						at : "center",
						of : window,
						show : {
							effect : "blind",
							duration : 800
						},
						open: function() {
					        $('.ui-widget-overlay').addClass('custom-overlay');
					    },
					    close: function() {
					        $('.ui-widget-overlay').removeClass('custom-overlay');
					    },
					    title: "Edit Contact"
					});
				});
			});

		});
	</script>
</body>
</html>