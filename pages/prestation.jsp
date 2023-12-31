<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="mg.model.*" %>
<%@page import="java.util.List" %>
<%
    String url = (String) request.getAttribute("url");
    List<Prestation> prestations =  (List<Prestation>) request.getAttribute("prestation");
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags-->
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="au theme template" />
    <meta name="author" content="Hau Nguyen" />
    <meta name="keywords" content="au theme template" />

    <!-- Title Page-->
    <title>Admin</title>

    <!-- Fontfaces CSS-->
    <link href="<%=url%>/assets/css/font-face.css" rel="stylesheet" media="all" />
    <link
      href="<%=url%>/assets/vendor/font-awesome-4.7/css/font-awesome.min.css"
      rel="stylesheet"
      media="all"
    />
    <link
      href="<%=url%>/assets/vendor/font-awesome-5/css/fontawesome-all.min.css"
      rel="stylesheet"
      media="all"
    />
    <link
      href="<%=url%>/assets/vendor/mdi-font/css/material-design-iconic-font.min.css"
      rel="stylesheet"
      media="all"
    />

    <!-- Bootstrap CSS-->
    <link
      href="<%=url%>/assets/vendor/bootstrap-4.1/bootstrap.min.css"
      rel="stylesheet"
      media="all"
    />

    <!-- Vendor CSS-->
    <link
      href="<%=url%>/assets/vendor/animsition/animsition.min.css"
      rel="stylesheet"
      media="all"
    />
    <link
      href="<%=url%>/assets/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
      rel="stylesheet"
      media="all"
    />
    <link href="<%=url%>/assets/vendor/wow/animate.css" rel="stylesheet" media="all" />
    <link
      href="<%=url%>/assets/vendor/css-hamburgers/hamburgers.min.css"
      rel="stylesheet"
      media="all"
    />
    <link href="<%=url%>/assets/vendor/slick/slick.css" rel="stylesheet" media="all" />
    <link href="<%=url%>/assets/vendor/select2/select2.min.css" rel="stylesheet" media="all" />
    <link
      href="<%=url%>/assets/vendor/perfect-scrollbar/perfect-scrollbar.css"
      rel="stylesheet"
      media="all"
    />

    <!-- Main CSS-->
    <link href="<%=url%>/assets/css/theme.css" rel="stylesheet" media="all" />
  </head>

  <body class="animsition">
    <div class="page-wrapper">
      <!-- HEADER DESKTOP-->
      <header class="header-desktop3 d-none d-lg-block">
        <div class="section__content section__content--p30">
          <div class="header3-wrap">
            <div class="header__navbar">
              <ul class="list-unstyled">
              <li>
                  <a href="customer-admin">
                      <i class="fas fa-handshake-o"></i>Clients</a>
              </li>        
              <li>
                  <a href="employee-admin">
                      <i class="fas fa-handshake-o"></i>Employés</a>
              </li>
              <li>
                  <a href="home-admin">
                      <i class="fas fa-home"></i>Services</a>
              </li>
              <li>
                <a href="prestation-admin">
                    <i class="fas fa-home"></i>Prestation</a>
              </li>
              <li>
                <a href="insert-page-admin">
                    <i class="fas fa-home"></i>Insertion client</a>
              </li>
              <li>
                <a href="demission-admin">
                    <i class="fas fa-home"></i>Démission</a>
              </li>
             
              </ul>
            </div>
              <div class="account-wrap">
                <div
                  class="account-item account-item--style2 clearfix js-item-menu"
                >
                  <div class="content">
                    <a class="js-acc-btn" href="#">Administrateur</a>
                  </div>
                  <div class="account-dropdown js-dropdown">
                    <div class="info clearfix">
                      <div class="content">
                        <h5 class="name">
                          <a href="#">Administrateur</a>
                        </h5>
                      </div>
                    </div>

                    <div class="account-dropdown__footer">
                      <a href="#">
                        <i class="zmdi zmdi-power"></i>Déconnexion</a
                      >
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>
      <!-- END HEADER DESKTOP-->

      <!-- HEADER MOBILE-->
      <header class="header-mobile header-mobile-2 d-block d-lg-none">
        <div class="header-mobile__bar">
          <div class="container-fluid">
            <div class="header-mobile-inner">
              <a class="logo" href="index.html">
                <img src="images/icon/logo-white.png" alt="IT-ADD Park'" />
              </a>
              <button class="hamburger hamburger--slider" type="button">
                <span class="hamburger-box">
                  <span class="hamburger-inner"></span>
                </span>
              </button>
            </div>
          </div>
        </div>
        <nav class="navbar-mobile">
          <div class="container-fluid">
            <ul class="navbar-mobile__list list-unstyled">
              <li>
                <a href="home-admin">
                  <i class="fas fa-check-square"></i>Services</a
                >
              </li>
              <li>
                <a href="customer-admin"> <i class="fas fa-user"></i>Clientèles</a>
              </li>
              <li>
                <a href="prestation-admin">
                    <i class="fas fa-home"></i>Prestation</a>
              </li>
              <li>
                <a href="insert-page-admin">
                    <i class="fas fa-home"></i>Insertion client</a>
              </li>
              <li>
                <a href="demission-admin">
                    <i class="fas fa-home"></i>Démission</a>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- END HEADER MOBILE -->

      <!-- PAGE CONTENT-->


        <!-- WELCOME-->
        <section class="welcome p-t-10">
          <div class="container">
            <div class="row">
              <div class="col-md-12" style="padding-top: 20px">
                <h1 class="title-4">Prestation</h1>
                <hr class="line-seprate" />
              </div>
            </div>
          </div>
        </section>
        <!-- END WELCOME-->

        
        <!-- STATISTIC CHART-->
        <section class="statistic-chart">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <h3 class="title-5 m-b-35">Historique des prestations</h3>
              </div>
            </div>
            <div class="row"></div>
          </div>
        </section>
        <!-- END STATISTIC CHART-->

        <!-- DATA TABLE-->
        <div class="au-card">
          <div class="table-responsive table--no-card m-b-30">
            <table
              class="table table-borderless table-striped table-earning"
            >
              <thead>
                <tr>
                  <th>Clients</th>
                  <th>Matricule</th>
                  <th>Service</th>
                  <th>Date début</th>
                  <th>Date fin</th>
                  <th>Durée</th>
                  <th>Place</th>
                  <th>Montant</th>

                </tr>
              </thead>
              <tbody>
              <% for(Prestation prestation: prestations) {
                try {
                  Customer customer = new Customer().selectById(prestation.getIdCustomer());
                  Service service = new Service().selectById(prestation.getIdService());
                  Place place = new Place().selectById(prestation.getIdPlace());
                  VehicleType vehicleType = new VehicleType().selectById(prestation.getIdTypeVehicle());
                %>
                <tr>
                  <td><%=customer.getName() + " " + customer.getSurname() %></td>
                  <td><%=prestation.getMatricule()%></td>
                  <td><%=service.getNameService()%></td>
                  <td><%=prestation.getDateStart()%></td>
                  <td><%=prestation.getDateEnd()%></td>
                  <td><%=prestation.getDuration()%></td>
                  <td><%=place.getNamePlace()%></td>
                  <td><%=prestation.getAmount()%></td>
                </tr>
                <% } catch(Exception e) {
                  
               }
              }
              %>
              </tbody>
            </table>
          </div>
        </div>
        
        <!-- END DATA TABLE-->

        <!-- COPYRIGHT-->
        <section class="p-t-60 p-b-20">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="copyright">
                  <p>
                    Copyright © 2023 <a href="">IT-ADD Park'</a>. Build by
                    RISE-IT.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!-- END COPYRIGHT-->
      </div>
    </div>

    <!-- Jquery JS-->
    <script src="<%=url%>/assets/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="<%=url%>/assets/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="<%=url%>/assets/vendor/slick/slick.min.js"></script>
    <script src="<%=url%>/assets/vendor/wow/wow.min.js"></script>
    <script src="<%=url%>/assets/vendor/animsition/animsition.min.js"></script>
    <script src="<%=url%>/assets/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <script src="<%=url%>/assets/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="<%=url%>/assets/vendor/counter-up/jquery.counterup.min.js"></script>
    <script src="<%=url%>/assets/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="<%=url%>/assets/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="<%=url%>/assets/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="<%=url%>/assets/vendor/select2/select2.min.js"></script>

    <!-- Main JS-->
    <script src="<%=url%>/assets/js/main.js"></script>
  </body>
</html>
<!-- end document-->
