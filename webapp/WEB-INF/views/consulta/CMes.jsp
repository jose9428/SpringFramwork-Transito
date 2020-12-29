<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
<spring:url value="/" var="urlRoot" />
</head>
<body>
	<a href="${urlRoot}" class="btn btn-info" title="Listado de Papeletas por vehiculo">Regresar</a>
	<table class="table table-hover text-center">
		<thead style="background: #337AB7; color: #FFFFFF;">
			<tr>
				<td>Mes</td>
				<td>Cantidad de Papeletas</td>
				<td>Total Monto</td>
			</tr>
		</thead>
		<c:forEach var="dato" items="${lista}">
			<tr>
			<td>${dato.nomMes }</td>
				<td>${dato.cantidad }</td>
				<td>${dato.montoTotal }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>