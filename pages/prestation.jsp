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
      <!-- PAGE CONTENT-->
      <div class="page-content--bgf7">
        <!-- BREADCRUMB-->
        <section class="au-breadcrumb2">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="au-breadcrumb-content">
                  <div class="au-breadcrumb-left">
                    <span class="au-breadcrumb-span">Vous êtes dans :</span>
                    <ul class="list-unstyled list-inline au-breadcrumb__list">
                      <li class="list-inline-item active">
                        <a href="home-admin">Accueil</a>
                      </li>
                      <li class="list-inline-item seprate">
                        <span>Employés</span>
                      </li>
                      <li class="list-inline-item"></li>
                    </ul>
                  </div>
                  <form class="au-form-icon--sm" action="" method="post">
                    <input
                      class="au-input--w300 au-input--style2"
                      type="text"
                      placeholder="Recherche de données &amp; rapports..."
                    />
                    <button class="au-btn--submit2" type="submit">
                      <i class="zmdi zmdi-search"></i>
                    </button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!-- END BREADCRUMB-->

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
