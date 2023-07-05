<%@page import='mg.model.*,java.util.*' %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% 
	LinkedList<VehicleType> list = (LinkedList<VehicleType>) request.getAttribute("vehicles");
%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>

	<!-- <link href="https://fonts.googleapis.com/css?family=Cabin:400,700" rel="stylesheet"> -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
	<link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="assets/css/booking-1.css" />

</head>

<body>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<div class="booking-bg"></div>
						<form method="get" action="Vehicle">
							<div class="form-header">
								<h2>Reservation <i class="bi bi-caret-right"></i></h2>
							</div>
							<div class="row">
								<div class="col-md-9">
									<div class="form-group">
										<span class="form-label d-flex flex-column">Choix de véhicule</span>
											<% for (VehicleType vehicleType : list) { %>
													<input type="radio" name="vehicleType" id="<%out.print(vehicleType.getIdvehicletype());%>" value="<%out.print(vehicleType.getIdvehicletype());%>" required>
													<label for="<%out.print(vehicleType.getIdvehicletype());%>">
													<% out.print(vehicleType.getNameVehicleType()); %>
												</label >
												<% } %>
												<input type="hidden" name="step" value="2">
												
										</div>
									</div>
								</div>
								<!-- <div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Horaire</span>
										<input class="form-control" type="number" required>
									</div>
								</div> -->
							</div>
							
							<div class="form-group">
								<div class="form-group">
									<span class="form-label">Matricule</span>
									<input class="form-control" type="text" name="matricule" required>
								</div>
							</div>
							
						
							<div class="form-btn">
								<button class="submit-btn btn btn-primary" type="submit">Valider</button>
							</div>
						</form>
					</div>
				</div>
			</div>	
		</div>
	</div>
</body>

</html>