<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title> Parking </title>
  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css" />
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,700|Roboto:400,700&display=swap" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet" />

  <link href="assets/css/responsive.css" rel="stylesheet" />
</head>

<body>
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container">
          <a class="navbar-brand" href="index.jsp">
            <span>
              <img src="assets/img/Logo-parking-clair.png" style="position:absolute; width:10rem; top:0; right:0; left: 0;" alt="" srcset=""> 
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <a class="nav-link" href="/Parking">Acceuil <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/Parking/pages/Front-Office/front/about.html"> A propos</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/Parking/Vehicle?step=1"> Reserver </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/Parking/pages/Front-Office/front/service.html"> Services </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/Parking/pages/Front-Office/front/contact.html">Contact</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="profile.html"></a>
                  <span class="profile-bubble" data-initials="N"></span>
                </li>
              </ul>
              <!-- <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="text"></button>
              </form> -->
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class=" slider_section ">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">01</li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1">02</li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2">03</li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container">
              <div class="detail-box">
                <h1>

                  Ne cherchez plus <br>
                  loin
                </h1>
                <p>
                  Trouvez la tranquillité avec notre système de réservation de parking en ligne. Réservez dès maintenant et évitez les tracas de la recherche de places.
                </p>
                <div>
                  <a href="">
                    Contactez-nous
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container">
              <div class="detail-box">
                <h1>

                  IT Add-Park <br>
                </h1>
                <p>
                  Bienvenue dans l'ère du stationnement numérique. Notre plateforme informatisée vous connecte aux meilleurs parkings, vous offrant une expérience fluide et sans tracas.
                </p>
                <div>
                  <a href="">
                    Contactez-nous
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container">
              <div class="detail-box">
                <h1>

                  Des services de gestion de parking <br>
                  qui font la différence 
                </h1>
                <p>
                  Des services de gestion de parking à la pointe de la technologie. Profitez d'une offre complète incluant la réservation, la sécurité et la surveillance pour une tranquillité d'esprit totale.
                </p>
                <div>
                  <a href="">
                    Contactez-nous
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="sr-only">Next</span>
        </a>
      </div>

    </section>
    <!-- end slider section -->
  </div>

  <!-- find section -->
  <!-- <section class="find_section">
    <div class="container">
      <form action="">
        <div class=" form-row">
          <div class="col-lg-3">
            <label for="carPark">Select Car Park</label>
            <select name="" id="carPark" class="form-control">
              <option value="">First Floor</option>
              <option value="">Option 1</option>
              <option value="">Option 2</option>
            </select>
          </div>
          <div class="col-lg-3">
            <label for="parkingName">Your Name Here</label>
            <input type="text" class="form-control" placeholder="jack frod " id="parkingName">
          </div>

          <div class="col-lg-3">
            <label for="parkingNumber">Your Phone Number</label>
            <input type="text" class="form-control" placeholder="+01 1234567890 " id="parkingNumber">
          </div>
          <div class="col-lg-3">
            <div class="btn-container">
              <button type="submit" class="">
                Request a call
              </button>
            </div>
          </div>
        </div>

      </form>
    </div>
  </section> -->

  <!-- end find section -->

  <!-- feature section -->
  <section class="feature_section layout_padding2">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="box">
            <div class="img-box">
              <img src="assets/img/c-removebg-preview (1).png" alt="">
            </div>
            <div class="detail-box">
              <h5>
                Sécurité
              </h5>
              <p>
                Offrir un environnement sécurisé où les clients se sentent en confiance 
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="box">
            <div class="img-box">
              <img src="assets/img/c.png" alt="">
            </div>
            <div class="detail-box">
              <h5>
                Temps
              </h5>
              <p>
                Alléger vos tracas sur la recherche de stationnement à Antananarivo
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="box">
            <div class="img-box">
              <img src="assets/img/d.png" alt="">
            </div>
            <div class="detail-box">
              <h5>
                Promotionnel
              </h5>
              <p>
                Fournir une visibilité aux entreprises locales auprès d'un public ciblé 
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end feature section -->

  <!-- why section -->
  <section class="why_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                Pourquoi nous
              </h2>
            </div>
            <p>
              "Votre gestion de parking simplifiée : Commodité, Contrôle et Sécurité réunis ! "
              Notre première priorité est de vous offrir une commodité inégalée. Grâce à notre plateforme informatisée conviviale, vous pouvez réserver votre place de stationnement en quelques clics, où que vous soyez et à tout moment au alentour du centre ville d'Antananarivo. Finis les moments de stress à chercher frénétiquement une place libre, notre système vous assure une disponibilité en temps réel et une allocation efficace des places .
              <!-- Une équipe d'agents de sécurité est composée de professionnels formés pour assurer la sécurité et la tranquillité d'esprit de nos clients. nous sommes là pour répondre à tous vos besoins en matière de stationnement et de services connexes. Ils surveillent en permanence le parking, veillant à ce que les véhicules et les biens soient en sécurité. Leur présence dissuasive et leur vigilance constante garantissent un environnement sûr pour tous nos clients. <br>Notre personnel administratif gère les réservations, répond aux demandes des clients, assure le suivi des paiements et fournit un support administratif essentiel. Ils sont là pour vous assister, répondre à toutes vos questions et s'assurer que votre expérience avec notre équipe est fluide et agréable. -->
            </p>
            <div>
              <a href="">
                Lire la suite
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="img-container">
            <div class="row">
              <div class="col-sm-6">
                <div class="img-box">
                  <img src="assets/img/a.jpg" alt="">
                  <a href="">
                    <img src="assets/img/link.png" alt="">
                  </a>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="img-box">
                  <img src="assets/img/b.jpg" alt="">
                  <a href="">
                    <img src="assets/img/link.png" alt="">
                  </a>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="img-box">
                  <img src="assets/img/w-3.jpg" alt="">
                  <a href="">
                    <img src="assets/img/link.png" alt="">
                  </a>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="img-box">
                  <img src="assets/img/w-4.jpg" alt="">
                  <a href="">
                    <img src="assets/img/link.png" alt="">
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end why section -->

  <!-- service section -->

  <section class="service_section layout_padding-bottom">
    <div class="container">
      <div class="heading_container">
        <h2>
          Nos Services
        </h2>
      </div>
      <p>
        Notre assistance 24h/24 et notre engagement envers votre satisfaction
      </p>
      <div class="box">
        <div class="img-box">
          <img src="assets/img/.png" alt="">
<!-- sary icon anleh services -->
        </div>
        <div class="detail-box">
          <h5>
            Lavage
          </h5>
          <p>
            Offrez à votre véhicule un rafraîchissement bien mérité avec notre service de lavage professionnel. Avec des techniques de lavage minutieuses et l'utilisation 
            de produits de qualité, nous redonnerons à votre véhicule une apparence impeccable, vous permettant de rouler avec style et fierté .
          </p>
          <div>
            <a href="service.html">
              Détails
            </a>
          </div>
        </div>
      </div>
      <div class="box">
        <div class="img-box">
        <!-- sary icon anleh services -->
        </div>
        <div class="detail-box">
          <h5>
            Parking Nocturne
          </h5>
          <p>
            Notre service de parking de nuit vous offre la tranquillité d'esprit 
            en vous proposant un espace sécurisé pour garer votre véhicule pendant la nuit .
            Que vous ayez besoin d'un stationnement sûr pour votre voiture personnelle ou pour un événement nocturne,restez serein .
          </p>
          <div>
            <a href="service.html">
              Détails
            </a>
          </div>
        </div>
      </div>
      <div class="box">
        <div class="img-box">

         <!-- sary icon anleh services -->
        </div>
        <div class="detail-box">
          <h5>
            Publicités
          </h5>
          <p>
            Profitez de notre opportunité de publicité exceptionnelle 
            grâce à des pancartes stratégiquement placées dans notre parking . Faites connaître votre entreprise, 
            vos produits et services aux nombreux visiteurs qui utilisent notre parking chaque jour.
          </p>
          <div>
            <a href="service.html">
              Détails
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end service section -->

  <!-- client section -->

  <section class="client_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2>
          Un peu plus sur nous 
        </h2>
      </div>
      <div id="carouselExample2Indicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExample2Indicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExample2Indicators" data-slide-to="1"></li>
          <li data-target="#carouselExample2Indicators" data-slide-to="2"></li>
          <li data-target="#carouselExample2Indicators" data-slide-to="3"></li>
          <li data-target="#carouselExample2Indicators" data-slide-to="4"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="box">
              <div class="img-box">
                <img src="assets/img/client.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Mahery
                </h6>
                <p>
                  Notre chef de projet est un leader dynamique et expérimenté qui supervise toutes les activités liées à notre projet de gestion de parking. 
                  Il est responsable de la planification, de la coordination et de la réalisation des objectifs du projet. Avec une solide compréhension des exigences opérationnelles et des compétences en gestion de projet,
                   notre chef de projet assure la réussite globale du projet en veillant à ce que les délais soient respectés,
                   que les ressources soient allouées de manière efficace et que les parties prenantes soient constamment informées des avancées.
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="box">
              <div class="img-box">
                <img src="assets/img/client.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Maroussia
                </h6>
                <p>
                  Développeur back-end spécialisé en java et beaucoup d'autres
                  Ce développeur back-end est un expert dans le langage de programmation orientée objet. Il se concentre sur la gestion des API, 
                  l'intégration de services externes et l'optimisation des performances. 
                  Son expertise en matière d'interconnectivité et de développement de fonctionnalités avancées améliore l'expérience glob
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="box">
              <div class="img-box">
                <img src="assets/img/client.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Dimby
                </h6>
                <p>
                  Ce développeur back-end apporte une expertise pointue dans le web dynamisme. 
                  Il est chargé de développer et d'optimiser les fonctionnalités clés de notre plateforme, en garantissant la fiabilité et la stabilité de nos systèmes.
                   Son expertise en matière d'architecture logicielle et de gestion de données contribue à la robustesse et à l'efficacité de notre projet.
                </p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="box">
              <div class="img-box">
                <img src="assets/img/client.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Jerrick
                </h6>
                <p>
                  Développeur en design, CSS et JSP :
                  Notre développeur en design, CSS et JSP apporte une touche esthétique et artistique à notre projet de gestion de parking.
                  Grâce à sa maîtrise des langages de programmation front-end tels que CSS et JSP, il crée des designs visuellement captivants et adaptables. 
                  En collaborant étroitement avec notre équipe de développement,
                  ce développeur assure une intégration harmonieuse des aspects visuels et fonctionnels, en veillant à ce que notre plateforme soit à la fois attrayante et conviviale.
                </p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="box">
              <div class="img-box">
                <img src="assets/img/client.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Nomena
                </h6>
                <p>
                  Développeur front-end spécialisé en JavaScript (JS) et HTML :
                 Notre développeur front-end spécialisé en JavaScript et HTML, une expérience dans la création d'interfaces utilisateur conviviales et interactives.
                 Il traduit les besoins et les exigences en interfaces visuellement attrayantes et fonctionnelles. En utilisant les dernières techniques et frameworks, 
                  notre développeur front-end assure une expérience utilisateur fluide, en optimisant la performance et l'accessibilité de notre plateforme.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </section>

  <!-- end client section -->

  <!-- rate section -->

  <section class="rate_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2>
          Tarifs de stationnement et publicitaire
        </h2>
      </div>
      <div class="rate_container">
        <div class="box">
          <div class="detail-box">
            <div class="price">
              <h3>
                Ar <span>1500</span> /h
                
              </h3>
              <h6>
                Jour
              </h6>
            </div>
            <p>
              Nous proposons des tarifs horaires, quotidiens et mensuels pour répondre à tous les besoins de stationnement
            </p>
          </div>
          <div class="btn-box">
            <a href="">
              Détails
            </a>
          </div>
        </div>
        <div class="box">
          <div class="detail-box">
            <div class="price">
              <h3>
                Ar <span>10000</span> /h

              </h3>
              <h6>
                Publicités
              </h6>
            </div>
            <p>
              Nous offrons une opportunité unique aux entreprises locales de promouvoir leur marque et leurs produits 
            </p>
          </div>
          <div class="btn-box">
            <a href="">
              Détails
            </a>
          </div>
        </div>
        <div class="box">
          <div class="detail-box">
            <div class="price">
              <h3>
                Ar <span>5000</span> /h

              </h3>
              <h6>
                Réservation
              </h6>
            </div>
            <p>
              En réservant à l'avance, vous avez l'assurance d'avoir une place de stationnement réservée qui vous attend à votre arrivée
            </p>
          </div>
          <div class="btn-box">
            <a href="">
              Détails
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end rate section -->

  <!-- contact section -->

  <section class="contact_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2>
          Contactez-nous
        </h2>
      </div>
      <div class="">
        <div class="row">
          <div class="col-md-6 mx-auto">
            <form action="">
              <div class="contact_form-container">
                <div>
                  <div>
                    <input type="text" placeholder="Nom">
                  </div>
                  <div>
                    <input type="email" placeholder="Email">
                  </div>
                  <div>
                    <input type="text" placeholder="Telephone">
                  </div>
                  <div class="">
                    <input type="text" placeholder="Message" class="message_input">
                  </div>
                  <div class="mt-5 d-flex justify-content-center ">
                    <button type="submit">
                      Envoyer
                    </button>
                  </div>
                </div>

              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </section>


  <!-- end contact section -->

  <!-- info section -->

  <section class="info_section ">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <h6>
            
          </h6>
          <p>
            Nous aimerions recueillir vos précieux commentaires et 
            évaluations pour nous aider à améliorer continuellement notre offre
          </p>
          <form action="">
            <textarea placeholder="Votre commentaire"></textarea>
            <div class="d-flex justify-content-end">
              <button>
                Envoyer
              </button>
            </div>
          </form>
        </div>
        <div class="col-lg-2">
          <h6>
            Informations
          </h6>
          <ul>
            <li>
              <a href="about.html">
                À propos du parking
              </a>
            </li>
            <li>
              <a href="">
                Tarifs et horaires
              </a>
            </li>
           
            <li>
              <a href="">
                Services offerts
              </a>
            </li>
          </ul>
        </div>
        <div class="col-lg-2">
          <h6>          
          lien utile
          </h6>
          <ul>
            <li>
              <a href="">
                Réservation en ligne
              </a>
            </li>
            <li>
              <a href="">
                Plan du parking
              </a>
            </li>
            <li>
              <a href="">
                Termes et conditions
              </a>
            </li>
          </ul>
        </div>

        <div class="col-lg-2">
          <h6>
            Contacts
          </h6>
          <div class="info_link-box">
            <a href="">
              <img src="assets/img/location.png" alt="">
              <span> Antananarivo</span>
            </a>
            <a href="">
              <img src="assets/img/call.png" alt="">
              <span>+261 xxxxxxx</span>
            </a>
            <a href="">
              <img src="assets/img/envelope.png" alt="">
              <span> xxxxx@gmail.com</span>
            </a>
          </div>
          <div class="info_social">
            <div>
              <a href="">
                <img src="assets/img/fb.png" alt="">
              </a>
            </div>
            <div>
              <a href="">
                <img src="assets/img/github.png" alt="">
              </a>
            </div>
            <div>
              <a href="">
                <img src="assets/img/insta.png" alt="">
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end info section -->


  <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
      &copy; <span id="displayYear"></span> Projet Parking By
      <a href="https://html.design/">RISE-IT</a>
    </p>
  </section>
  <!-- footer section -->


  <script type="text/javascript" src="assets/js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="assets/js/bootstrap.js"></script>
  <!-- <script type="text/javascript" src="js/custom.js"></script> -->

</body>

</html>