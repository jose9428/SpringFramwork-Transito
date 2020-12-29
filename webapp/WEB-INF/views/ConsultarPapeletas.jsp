<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
<title>Consultar Papeletas</title>
<spring:url value="/" var="urlRoot" />
</head>
<body>
	<div class="container mt-4">
		<div class="card" style="width: 70%; margin: auto;">
			<div class="card-body">
				<h5>Consultar Papeletas</h5>
				<form>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Ingrese Año</label>
						<div class="col-sm-10">
							<input type="number" class="form-control" id="anio" name="anio" >
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Seleccione </label>
						<div class="col-sm-10">
							<div class="form-check">
								<input class="form-check-input" type="radio" name="rConsulta"
									id="exampleRadios1" value="1" checked> <label
									class="form-check-label" for="exampleRadios1"> Por
									Propietario</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="rConsulta"
									id="exampleRadios2" value="2"> <label
									class="form-check-label" for="exampleRadios2"> Por Mes
								</label>
							</div>
						</div>


					</div>

					<button type="button" class="btn btn-primary" id="BtnConsultar">Enviar
						Consulta</button>
					<input type="reset" value="Nuevo" id="nuevo" class="btn btn-danger">
				</form>
			</div>
		</div>
		<br>
		<div id="resultado"></div>
	</div>
</body>
<!-- 
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
 -->
<script src="${urlRoot}resources/script/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#nuevo").on("click", function() {
			$("#anio").val("");
			$("#resultado").html("");
		});

		$("#BtnConsultar").on("click", function() {

			var seleccion = $("input:radio[name=rConsulta]:checked").val();
			var anioSel = $("#anio").val();
			var urlRoot;
			if (parseInt(seleccion) == 2) {
				urlRoot = "${urlRoot}Consultar/Mes/" + anioSel;
			} else {
				urlRoot = "${urlRoot}Consultar/Propietario/" + anioSel;
			}

			$.ajax({
				type : 'GET',
				url : urlRoot,
				success : function(result) {
					$("#resultado").html(result);
				},
				error : function(e) {
					alert("ERROR: " + e);
				},
				done : function(e) {
					alert("DONE");
				}
			});

		});
	});
</script>
</html>