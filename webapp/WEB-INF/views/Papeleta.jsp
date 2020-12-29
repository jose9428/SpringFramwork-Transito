<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
<title>Listado Papeletas</title>
<spring:url value="/" var="urlRoot" />
</head>
<body>
	<div class="container mt-4">
		<div class="card">
			<div class="card-body">
				<h5 class="card-text text-center">Papeletas de ${propietario}</h5>
				<div class="text-center mx-auto">
					<a href="${urlRoot}" class="btn btn-primary">Retornar</a>
				</div>

				<table class="table table-hover">
					<thead style="background: #337AB7; color: #FFFFFF;">
						<tr>
							<th>Papeleta</th>
							<th>Infraccion</th>
							<th>Importe</th>
							<th>Fecha</th>
						</tr>
					</thead>
					<tbody>
						<c:set value="0" var="total">
						</c:set>
						<c:forEach items="${listaPap }" var="dato">
							<tr>
								<td>${dato.NROPAP }</td>
								<td>${dato.infdes }</td>
								<td>${dato.INFIMP }</td>
								<td><fmt:formatDate value="${dato.PAPFECHA}"
										pattern="dd-MM-yyyy" /></td>
							</tr>
							<c:set value="${total + dato.INFIMP }" var="total"></c:set>
						</c:forEach>
						<tr class="alert alert-info">
							<td colspan="2"><strong>Total</strong></td>
							<td><strong>${total }</strong></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>