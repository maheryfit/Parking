<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="mg.model.*" %>
<%@page import="java.util.List" %>
<%
    String url = (String) request.getAttribute("url");
    List<Customer> customer = (List<Customer>) request.getAttribute("customerlist");
    List<Customer> customerLoyal = (List<Customer>) request.getAttribute("customerLoyal");
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
    <title>Customer</title>

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
      <!-- HEADER MOBILE-->
      <header class="header-mobile d-block d-lg-none">
        <div class="header-mobile__bar">
          <div class="container-fluid">
            <div class="header-mobile-inner">
              <img src="<%=url%>/assets/img/icon/logo.png" alt="CoolAdmin" />
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
                  <i class="fas fa-chart-bar"></i>Services</a
                >
              </li>
              <li>
                <a href="employee-admin">
                  <i class="fas fa-users"></i>Employés</a
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
                <a href="demission-admin">
                    <i class="fas fa-home"></i>Démission</a>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- END HEADER MOBILE-->

      <!-- MENU SIDEBAR-->
      <aside class="menu-sidebar d-none d-lg-block">
        <div class="logo">
          <a href="#">
            <img src="<%=url%>/assets/img/logo_black.png" style="width: 75%;" alt="Cool Admin" />
          </a>
        </div>
        <div class="menu-sidebar__content js-scrollbar1">
          <nav class="navbar-sidebar">
            <ul class="list-unstyled navbar__list">
              <li>
                <a href="home-admin">
                  <i class="fas fa-chart-bar"></i>Services</a
                >
              </li>
              <li>
                <a href="employee-admin"> <i class="fas fa-users"></i>Employés</a>
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
          </nav>
        </div>
      </aside>
      <!-- END MENU SIDEBAR-->

      <!-- PAGE CONTAINER-->
      <div class="page-container">
        <section class="statistic-chart">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <h3 class="title-5 m-b-35">Clients</h3>
              </div>
            </div>
            <div class="row"></div>
          </div>
        </section>
                <!-- DATA TABLE-->
                <div class="au-card">
                  <div class="table-responsive table--no-card m-b-30">
                    <table
                      class="table table-borderless table-striped table-earning"
                    >
                      <thead>
                        <tr>
                          <th>Name</th>
                          <th>First name</th>
                          <th >Phone number</th>
                          <th>Email</th>
                          <th>Job</th>
                          <th>Salaire</th>
                        </tr>
                      </thead>
                      <tbody>
                        <% for(Customer c : customer) { %>
                          <tr>
                            <td class="text-right"><% out.print(c.getName()); %></td>
                            <td class="text-right"><% out.print(c.getSurname()); %></td>
                            <td><% out.print(c.getEmail()); %></td>
                            <td><% out.print(c.getBirthday()); %></td>
                            <td><% out.print(c.getRegistrationDate()); %></td>
                            <td class="text-right"><% out.print(c.getPhoneNumber()); %></td>
                          </tr>
                        <% } %>
                      </tbody>
                    </table>
                  </div>
                </div>
                <section class="statistic-chart">
                  <div class="container">
                    <div class="row">
                      <div class="col-md-12">
                        <h3 class="title-5 m-b-35">Clients fidèles</h3>
                      </div>
                    </div>
                    <div class="row"></div>
                  </div>
                </section>
                        <!-- DATA TABLE-->
                        <div class="au-card">
                          <div class="table-responsive table--no-card m-b-30">
                            <table
                              class="table table-borderless table-striped table-earning"
                            >
                              <thead>
                                <tr>
                                  <th>Name</th>
                                  <th>First name</th>
                                  <th >Phone number</th>
                                  <th>Email</th>
                                  <th>Job</th>
                                  <th>Salaire</th>
                                </tr>
                              </thead>
                              <tbody>
                                <% for(Customer c : customerLoyal) { %>
                                  <tr>
                                    <td class="text-right"><% out.print(c.getName()); %></td>
                                    <td class="text-right"><% out.print(c.getSurname()); %></td>
                                    <td><% out.print(c.getEmail()); %></td>
                                    <td><% out.print(c.getBirthday()); %></td>
                                    <td><% out.print(c.getRegistrationDate()); %></td>
                                    <td class="text-right"><% out.print(c.getPhoneNumber()); %></td>
                                  </tr>
                                <% } %>
                              </tbody>
                            </table>
                          </div>
                        </div>
              <div class="row" style="margin-top: 20rem;">
                <div class="col-md-12">
                  <div class="copyright">
                    <p>
                      Copyright © 2023 - Parking Project. Build by
                      <a href="">RISE-IT</a>.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Jquery JS-->
    <script src="<%=url%>/assets/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="<%=url%>/assets/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="<%=url%>/assets/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- <%=url%>/assets/vendor JS       -->
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
