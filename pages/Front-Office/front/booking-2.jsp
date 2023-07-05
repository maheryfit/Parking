<%@page import='mg.model.*,java.util.*' %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% 
	LinkedList<Service> list = (LinkedList<Service>) request.getAttribute("services");
	String vehicletype = (String) request.getAttribute("vehicletype");
	String matricule = (String) request.getAttribute("matricule");
%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Partie 2</title>

	<!--<link href="https://fonts.googleapis.com/css?family=Cabin:400,700" rel="stylesheet">-->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
	<link type="text/css" rel="stylesheet" href="assets/css/booking-2.css" />
	<link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css" />

</head>

<body>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form col-8">
						<div class="booking-bg"></div>
						<form action="Prestation" method="get">
							<div class="form-header">
								<h2>Réservation <i class="bi bi-caret-right"></i><i class="bi bi-caret-right"></i></h2>
							</div>
					
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Date</span>
										<input class="form-control" name="date" type="datetime-local" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Durée</span>
										<input class="form-control" name="duree" type="number" required>
									</div>
								</div>
							</div>
							
							<div class="form-group">
								<div class="form-group">
									<span class="form-label">Service</span>
									<select class="form-control" name="service">
										<% for (int i = 0 ; i < list.size(); i++) { %>
											<option value="<%= list.get(i).getIdService() %>"><%= list.get(i).getNameService() %></option>
										<% } %>

									</select>
									<span class="select-arrow"></span>
								</div>
							</div>
							<div class="form-group">
								<span class="form-label">Tel</span>
								<input class="form-control" name="tel" type="tel" placeholder="">
							</div>
				
							<div class="condition">
								<label>
									<input type="checkbox" name="condition">
									J'ai bien vérifié ma date et heure de réservation
								</label>
								<small class="form-text text-muted">Veuillez lire et accepter les conditions de réservation avant de continuer. <a href="./condition.html">Conditions</a></small>
							</div>
							<input  name="action" type="hidden" value="insert">
							<input  name="matricule" type="hidden" value="<%= matricule %>">
							<input  name="vehicleType" type="hidden" value="<%= vehicletype %>">
							
							<div class="form-btn">
								<button class="submit-btn" type="submit">Valider</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>