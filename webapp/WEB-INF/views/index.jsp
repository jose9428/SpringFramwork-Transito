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
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css">
<title>Pagina Principal</title>
<spring:url value="/" var="urlRoot" />
</head>
<body>

	<div class="container mt-4">
		<div class="card">
			<div class="card-body">

				<div class="row">
					<div class="col-sm-1">
						<img src="${urlRoot}resources/img/police.png" width="70px" />
					</div>
					<div class="col-sm-3">
						<br>
						<h5>Lista de Vehiculos</h5>
						<a href="${urlRoot}Consultar/" class="btn btn-info" title="Consultar Papeletas por año">Consultar</a>
					</div>
				</div>
				<br>
				<table id="example" class="table table-hover">
					<thead style="background: #337AB7; color: #FFFFFF;">
						<tr>
							<th>Nro Placa</th>
							<th>Propietario</th>
							<th>Papeletas</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listaVehiculo }" var="dato">
							<tr>
								<td>${dato.NROPLA }</td>
								<td>${dato.NOMPRO }</td>
								<td><a href="${urlRoot}Papeleta/${dato.NROPLA}"
									title="Papeletas de ${dato.NOMPRO}">Ver</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
<script
	src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
<script
	src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.bootstrap4.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script
	src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
<script
	src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
<script
	src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
<script
	src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
<script
	src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap4.min.js"></script>
<script>
	$(document)
			.ready(
					function() {
						var table = $('#example')
								.DataTable(
										{
											language : {
												"lengthMenu" : "Mostrar _MENU_ registros",
												"zeroRecords" : "No se encontraron resultados",
												"info" : "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
												"infoEmpty" : "Mostrando registros del 0 al 0 de un total de 0 registros",
												"infoFiltered" : "(filtrado de un total de _MAX_ registros)",
												"sSearch" : "Buscar:",
												"oPaginate" : {
													"sFirst" : "Primero",
													"sLast" : "Último",
													"sNext" : "Siguiente",
													"sPrevious" : "Anterior"
												},
												"sProcessing" : "Procesando...",
											}
										});

						table.buttons().container().appendTo(
								'#example_wrapper .col-md-6:eq(0)');
					});
</script>
</html>