<%@page import='mg.model.*,java.util.*' %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% 
    Prestation pr = (Prestation) request.getAttribute("prestation");
    Customer cust = (Customer) request.getAttribute("client");
    Service serv = (Service) request.getAttribute("service");
    VehicleType vt = (VehicleType) request.getAttribute("vehicletype");
%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Parking</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css" />
        <link href="https://fonts.googleapis.com/css?family=Raleway:400,700|Roboto:400,700&display=swap" rel="stylesheet">
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="assets/css/responsive.css" rel="stylesheet" />
    </head>

    <body>
        <header class="header_section">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-lg custom_nav-container">
                    <a class="navbar-brand" href="index.html">
                        <div class="img-box" >

                            <img src="assets/img/logo_white.png" style="width: 100px; height: 55px" alt="">

                        </div>
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
                        <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
                            <ul class="navbar-nav  ">
                                <li class="nav-item active">
                                    <a class="nav-link" href="/Parking">Accueil <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="about.html"> A propos</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/Parking/Vehicle?step=1"> Réserver </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="service.html"> Services </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="contact.html">Contact</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="profile.html"></a>
                                    <span class="profile-bubble" data-initials="N"></span>
                                </li>
                            </ul>
                            <!-- <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
                                  <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
                                </form> -->
                        </div>
                    </div>
                </nav>
            </div>
        </header>
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <div class="card text-start shadow" style="margin-bottom: 0px;margin-top: 100px;width: 950px;">
                    <div class="card-body">
                        <h4 class="card-title"><%= cust.getName() %>
                            <span class="text-secondary d-inline float-end" style="float: right;"><%=serv.getNameService() %></span></h4>
                        <h6 class="text-muted card-subtitle mb-2"><%= pr.getMatricule()%></h6>
                        <ul>
                            <li><%= vt.getNameVehicleType() %></li>
                            <li>Heure Debut : <%= pr.formatTime(pr.getDateStart())%></li>
                            <li>Heure Fin : <%= pr.formatTime(pr.getDateEnd())%></li>
                            <li>Montant : <%= pr.getAmount() %> AR</li>
                        </ul>
                        <p><%= pr.formatDate(pr.getDateStart())%></p>
                    </div>
                </div>
            </div>
            <div class="col-md-2">

            </div>
        </div>
        <script src="assets/js/bootstrap.min.js"></script>
    </body>

</html>