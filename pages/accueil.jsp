<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="mg.model.*" %>
<%@page import="java.util.List" %>
<%
    String url = (String) request.getAttribute("url");
    String nomUtilisateur = (String) request.getAttribute("nomUtilisateur");
    List<Job> jobSalaries =  (List<Job>) request.getAttribute("jobSalaries");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Admin page</title>

    <!-- Fontfaces CSS-->
    <link href="<%=url%>/assets/css/font-face.css" rel="stylesheet" media="all">
    <link href="<%=url%>/assets/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="<%=url%>/assets/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="<%=url%>/assets/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="<%=url%>/assets/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="<%=url%>/assets/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="<%=url%>/assets/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="<%=url%>/assets/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="<%=url%>/assets/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="<%=url%>/assets/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="<%=url%>/assets/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="<%=url%>/assets/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="<%=url%>/assets/css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="home-admin">
                            <img src="<%=url%>/assets/img/icon/logoa.png" alt="CoolAdmin" />
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
                                <i class="fas fa-users"></i>Service</a>
                        </li>
                        <li>
                            <a href="employee-admin">
                                <i class="fas fa-users"></i>Employés</a>
                        </li>
                        <li>
                            <a href="customer-admin">
                                <i class="fas fa-users"></i>Clients</a>
                        </li>
     
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="home-admin">
                    <img src="<%=url%>/assets/img/icon/logoa.png" alt="Cool Admin" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li>
                            <a href="home-admin">
                                <i class="fas fa-users"></i>Service</a>
                        </li>
                        <li>
                            <a href="employee-admin">
                                <i class="fas fa-users"></i>Employés</a>
                        </li>
                        <li>
                            <a href="customer-admin">
                                <i class="fas fa-users"></i>Clients</a>
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
                            <div class="header-button">
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">Administrateur</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="content">
                                                    <h5 class="name">
                                                        Administrateur
                                                    </h5>
                                                </div>
                                            </div>
                                           
                                            <div class="account-dropdown__footer">
                                                <a href="#">
                                                    <i class="zmdi zmdi-power"></i>Déconnexion</a>
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
                        <%
                            for(Job job : jobSalaries) { %>
                                <div class="col-md-6 col-lg-4">
                                    <div class="top-campaign">
                                        <h3 class="title-3 m-b-30"><%=job.getNameJob()%></h3>
                                        <div class="table-responsive">
                                            <table class="table table-top-campaign">
                                                <tbody>
                                                    <tr>
                                                        <td>Montant :</td>
                                                        <td><%=job.getSalary()%> ar</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            <% }
                        %>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © 2023 <a href="">IT-ADD Park'</a>. Build by RISE-IT.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="<%=url%>/assets/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="<%=url%>/assets/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="<%=url%>/assets/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="<%=url%>/assets/vendor/slick/slick.min.js">
    </script>
    <script src="<%=url%>/assets/vendor/wow/wow.min.js"></script>
    <script src="<%=url%>/assets/vendor/animsition/animsition.min.js"></script>
    <script src="<%=url%>/assets/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="<%=url%>/assets/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="<%=url%>/assets/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="<%=url%>/assets/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="<%=url%>/assets/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="<%=url%>/assets/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="<%=url%>/assets/vendor/select2/select2.min.js">
    </script>
    <!-- Main JS-->
    <script src="<%=url%>/assets/js/main.js"></script>
</body>

</html>
<!-- end document-->
