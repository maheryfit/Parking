<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="mg.model.*" %>
<%@page import="java.util.List" %>

<% String url = (String) request.getAttribute("url"); 
    List<Job> job = (List<Job>) request.getAttribute("job");
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
    <title></title>

    <!-- Fontfaces CSS-->
    <link href="<%= url %>/assets/css/font-face.css" rel="stylesheet" media="all" />
    <link
      href="<%= url %>/assets/vendor/font-awesome-5/css/fontawesome-all.min.css"
      rel="stylesheet"
      media="all"
    />
    <link
      href="<%= url %>/assets/vendor/font-awesome-4.7/css/font-awesome.min.css"
      rel="stylesheet"
      media="all"
    />
    <link
      href="<%= url %>/assets/vendor/mdi-font/css/material-design-iconic-font.min.css"
      rel="stylesheet"
      media="all"
    />

    <!-- Bootstrap CSS-->
    <link
      href="<%= url %>/assets/vendor/bootstrap-4.1/bootstrap.min.css"
      rel="stylesheet"
      media="all"
    />

    <!-- Vendor CSS-->
    <link
      href="<%= url %>/assets/vendor/animsition/animsition.min.css"
      rel="stylesheet"
      media="all"
    />
    <link
      href="<%= url %>/assets/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
      rel="stylesheet"
      media="all"
    />
    <link href="<%= url %>/assets/vendor/wow/animate.css" rel="stylesheet" media="all" />
    <link
      href="<%= url %>/assets/vendor/css-hamburgers/hamburgers.min.css"
      rel="stylesheet"
      media="all"
    />
    <link href="<%= url %>/assets/vendor/slick/slick.css" rel="stylesheet" media="all" />
    <link href="<%= url %>/assets/vendor/select2/select2.min.css" rel="stylesheet" media="all" />
    <link
      href="<%= url %>/assets/vendor/perfect-scrollbar/perfect-scrollbar.css"
      rel="stylesheet"
      media="all"
    />

    <!-- Main CSS-->
    <link href="<%= url %>/assets/css/theme.css" rel="stylesheet" media="all" />
  </head>

  <body class="animsition">
    <div class="page-wrapper">
      <!-- HEADER MOBILE-->
      <header class="header-mobile d-block d-lg-none">
        <div class="header-mobile__bar">
          <div class="container-fluid">
            <div class="header-mobile-inner">
              <a class="logo" href="index.html">
                <img src="<%= url %>/assets/img/icon/logoa.png" alt="CoolAdmin" />
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
              <li class="has-sub">
                <a class="js-arrow" href="#">
                  <i class="fas fa-chart-bar"></i>Financier</a
                >
                <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                  <li>
                   <a href="acceuil.html">Recettes</a>
                  </li>
                  <li>
                    <a href="index2.html">Dépenses</a>
                  </li>
                </ul>
              </li>
              <li>
                            <a href="chart.html">
                                <i class="fas fa-check-square"></i>Services</a>
                        </li>
                        <li>
                            <a href="index3.html">
                                <i class="fas fa-users"></i>Employés</a>
                        </li>
                        <li>
                            <a href="salaire.html">
                                <i class="fas fa-users"></i>Salaires</a>
                        </li>
                        <li>
                            <a href="table.html">
                                <i class="fas fa-user"></i>Clienteles</a>
                        </li>
                        <li>
                            <a href="frequentation.html">
                                <i class="fas fa-map-marker-alt"></i>Frequentation</a>
                        </li>                
                        
                        <li>
                            <a href="demission.html">
                                <i class="fas fa-calendar-alt"></i>Demission</a>
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
            <img src="<%= url %>/assets/img/icon/logoa.png" alt="Cool Admin" />
          </a>
        </div>
        <div class="menu-sidebar__content js-scrollbar1">
          <nav class="navbar-sidebar">
            <ul class="list-unstyled navbar__list">
              <li class="has-sub">
                <a class="js-arrow" href="#">
                  <i class="fas fa-chart-bar"></i>Financier</a
                >
                <ul class="list-unstyled navbar__sub-list js-sub-list">
                  <li>
                    <a href="acceuil.html">Recettes</a>
                  </li>
                  <li>
                     <a href="index2.html">Dépenses</a>
                  </li>
                </ul>
              </li>
                <li>
                            <a href="chart.html">
                                <i class="fas fa-check-square"></i>Services</a>
                        </li>
                        <li>
                            <a href="index3.html">
                                <i class="fas fa-users"></i>Employés</a>
                        </li>
                        <li>
                            <a href="salaire.html">
                                <i class="fas fa-users"></i>Salaires</a>
                        </li>
                        <li>
                            <a href="table.html">
                                <i class="fas fa-user"></i>Clienteles</a>
                        </li>
                        <li>
                            <a href="frequentation.html">
                                <i class="fas fa-map-marker-alt"></i>Frequentation</a>
                        </li>                
                        
                        <li>
                            <a href="demission.html">
                                <i class="fas fa-calendar-alt"></i>Demission</a>
                        </li>
            </ul>
          </nav>
        </div>
      </aside>
      <!-- END MENU SIDEBAR-->

      <!-- PAGE CONTAINER-->
      <div class="page-container">
        <!-- HEADER DESKTOP-->
        <header class="header-desktop">
          <div class="section__content section__content--p30">
            <div class="container-fluid">
              <div class="header-wrap">
                <form class="form-header" action="" method="POST">
                  <!-- <input
                    class="au-input au-input--xl"
                    type="text"
                    name="search"
                    placeholder="Recherche de données &amp; rapports..."
                  />
                  <button class="au-btn--submit" type="submit">
                    <i class="zmdi zmdi-search"></i>
                  </button> -->
                </form>
                <div class="header-button">
                  <div class="noti-wrap">
                <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-notifications"></i>
                                        <span class="quantity">3</span>
                                        <div class="notifi-dropdown js-dropdown">
                                            <div class="notifi__title">
                                                <p>Vous avez 3 Notifications</p>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c1 img-cir img-40">
                                                    <i class="zmdi zmdi-email-open"></i>
                                                </div>
                                                <div class="content">
                                                    <p>Une notification dans votre email</p>
                                                    <span class="date">Juin 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c2 img-cir img-40">
                                                    <i class="zmdi zmdi-account-box"></i>
                                                </div>
                                                <div class="content">
                                                    <p>Un client s'apprête à faire une réservation</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c3 img-cir img-40">
                                                    <i class="zmdi zmdi-file-text"></i>
                                                </div>
                                                <div class="content">
                                                    <p>Vous avez été évalué</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__footer">
                                                <a href="#">Toutes les notifications</a>
                                            </div>
                                        </div>
                                    </div>
                  </div>
                 <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="<%= url %>/assets/img/icon/avatar-01.jpg" alt="nomena" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">Nomena</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="<%= url %>/assets/img/icon/avatar-01.jpg" alt="nomena" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">Nomena</a>
                                                    </h5>
                                                    <span class="email">nomena@example.com</span>
                                                </div>
                                            </div>
                                           
                                            <div class="account-dropdown__footer">
                                                <a href="#">
                                                    <i class="zmdi zmdi-power"></i>Deconnexion</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                </div>
              </div>
            </div>
          </div>
        </header>
        <!-- HEADER DESKTOP-->

        <!-- MAIN CONTENT-->
        <div class="main-content">
          <div class="section__content section__content--p30">
            <div class="container-fluid">
              <div class="row">
                <div class="col-lg-6"></div>
                <div class="col-lg-6"></div>
                <div class="col-lg-6">
                  <div class="card">
                    <div class="card-header">
                      <strong>Employés</strong>
                    </div>
                    <div class="card-body card-block">
                      <form action="./insertemp" method="get" enctype="multipart/form-data" class="form-horizontal">
                        <div class="row form-group">
                          <div class="col col-md-3">
                            <label class="form-control-label">Données</label>
                          </div>
                          <div class="col-12 col-md-9">
                            <p class="form-control-static">Personne</p>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3">
                            <label for="text-input" class="form-control-label"
                              >Nom</label
                            >
                          </div>
                          <div class="col-12 col-md-9">
                            <input type="text" id="text-input" name="nom" placeholder="" class="form-control"/>
                            <small class="form-text text-muted"></small>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3">
                            <label for="text-input" class="form-control-label"
                              >Prenom</label
                            >
                          </div>
                          <div class="col-12 col-md-9">
                            <input type="text" id="text-input" name="prenom" placeholder="" class="form-control"/>
                            <small class="form-text text-muted"
                              >prénom appellatif</small
                            >
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3">
                            <label for="email-input" class="form-control-label"
                              >Email</label
                            >
                          </div>
                          <div class="col-12 col-md-9">
                            <input type="email" id="email-input" name="email" placeholder="" class="form-control" />
                            <small class="help-block form-text"></small>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3">
                            <label for="date-input" class="form-control-label"
                              >Date de naissance</label
                            >
                          </div>
                          <div class="col-12 col-md-9">
                            <input type="date" id="date-input" name="datenaissance" placeholder="" class="form-control"/>
                            <small class="help-block form-text"></small>
                          </div>
                        </div>
                        <div class="row form-group">
                          <div class="col col-md-3">
                            <label for="phone-input" class="form-control-label"
                              >Phone</label
                            >
                          </div>
                          <div class="col-12 col-md-9">
                            <input type="phone" id="phone-input" name="phone" placeholder="" class="form-control"/>
                            <small class="help-block form-text"
                              >actif(contact principal)</small
                            >
                          </div>
                        </div>

                        <div class="row form-group">
                          <div class="col col-md-3">
                            <label class="form-control-label">Rôle</label>
                          </div>
                          <div class="col col-md-9">
                            <div class="form-check">
                            <% for(Job j : job) { %>
                              <div class="checkbox">
                                <label for="checkbox1" class="form-check-label">
                                  <input type="radio" id="checkbox1" name="radio" value="<% out.print(j.getIdJob());%>" class="form-check-input"/><% out.print(j.getNameJob()); %>
                                </label>
                              </div>
                            <% } %>
                            </div>
                          </div>
                        </div>

                        <button type="submit" class="btn btn-primary btn-sm">
                          <i class="fa fa-dot-circle-o"></i> Enregistrer
                        </button>
                        <!-- <button type="reset" class="btn btn-danger btn-sm">
                          <i class="fa fa-ban"></i> Supprimer
                        </button> -->
                      </form>
                    </div>
                    <div class="card-footer">
                    </div>
                  </div>
                </div>
      
              </div>
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
          </div>
        </div>
      </div>
    </div>

    <!-- Jquery JS-->
    <script src="<%= url %>/assets/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="<%= url %>/assets/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="<%= url %>/assets/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="<%= url %>/assets/vendor/slick/slick.min.js"></script>
    <script src="<%= url %>/assets/vendor/wow/wow.min.js"></script>
    <script src="<%= url %>/assets/vendor/animsition/animsition.min.js"></script>
    <script src="<%= url %>/assets/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <script src="<%= url %>/assets/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="<%= url %>/assets/vendor/counter-up/jquery.counterup.min.js"></script>
    <script src="<%= url %>/assets/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="<%= url %>/assets/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="<%= url %>/assets/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="<%= url %>/assets/vendor/select2/select2.min.js"></script>

    <!-- Main JS-->
    <script src="<%= url %>/assets/js/main.js"></script>
  </body>
</html>
<!-- end document-->
