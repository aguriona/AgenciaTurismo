
<%@page import="persistencia.ControladoraPersistencia"%>
<%@page import="logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%ControladoraPersistencia control = new ControladoraPersistencia();%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Clientes</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
      <link rel="stylesheet" href="css/nice-select.css">
      <link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
      <link rel="stylesheet" href="css/niceCountryInput.css">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
   </head>
   <!-- body -->
   <body class="main-layout inner_page">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#"/></div>
      </div>
      <!-- end loader -->
      <!-- header -->
      <div class="header">

         <div class="header_midil">
            <div class="container">
               <div class="row d_flex">
                  <div class=" col-md-2 col-sm-3 logo_section">
                     <div class="full">
                        <div class="center-desk">
                           <div class="logo">
                              <a href="index.html"><img src="images/logo.png" alt="#" /></a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-sm-9 col-md-8">
                     <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                           <ul class="navbar-nav mr-auto">
                              <li class="nav-item">
                                 <a class="nav-link" href="index.html">Home</a>
                              </li>
                              
                              <li class="nav-item active">
                                 <a class="nav-link" href="client.html">client </a>
                              </li>
                             
                           </ul>
                        </div>
                     </nav>
                  </div>
                  <div class="col-md-2  d_none">
                     <ul class="email text_align_right">
                        <li><a href="Javascript:void(0)"><i class="fa fa-user" aria-hidden="true"></i></a></li>
                        <li><a href="Javascript:void(0)"><i class="fa fa-search" aria-hidden="true"></i>   </a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end header inner -->
      <!-- customers -->
      <div class="customers">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <div class="titlepage text_align_center">
                     <h2>Administrar Clientes</h2>
                  </div>
               </div>
            </div>
            <!-- start slider section -->

                  <div class="col-md-5">
                      <form id="request" class="main_form" action="cliente" method="POST">
                          
                        <div class="row">
                           <div class="col-md-12 ">
                              <input class="cont_in" placeholder="Nombre" type="text" name="nombre"> 
                           </div>
                           <div class="col-md-12 ">
                              <input class="cont_in" placeholder="Apellido" type="text" name="apellido"> 
                           </div>
                           <div class="col-md-12 ">
                              <input class="cont_in" placeholder="Direccion" type="text" name="direccion"> 
                           </div>
                           <div class="col-md-12 ">
                              <input class="cont_in" placeholder="DNI" type="text" name="dni"> 
                           </div>
                           <div class="col-md-12 ">
                              <input class="cont_in" placeholder="Fecha de Nacimiento" type="text" name="fecha"> 
                           </div>
                           <div class="col-md-12 ">
                              <input class="cont_in" placeholder="Nacionalidad" type="text" name="nacionalidad"> 
                           </div>
                           <div class="col-md-12 ">
                              <input class="cont_in" placeholder="Celular" type="text" name="celular"> 
                           </div>
                           <div class="col-md-12">
                              <input class="cont_in" placeholder="E-mail" type="text" name="email"> 
                           </div>

                           <div class="col-md-6">
                              <button type="submit" class="send_btnt" >Guardar</button>
                           </div>
                           <div class="col-md-6">
                              <button class="send_btnt">Buscar</button>
                   
                           </div>
                        </div>
                     </form>
                      <form id="request2" class="main_form" action="cliente" method="GET">
                          <div class="col-md-6">
                              <button type="submit" class="send_btnt" >Listar</button>
                           </div>
                      </form>
                  </div>
         </div>
      </div>
      <!-- end customers -->
      <!--  footer -->
      <footer>
         <div class="footer">
 
            <div class="copyright">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        <p>© 2020 All Rights Reserved. Design by <a href="https://html.design/"> Free html Templates</a></p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/jquery.nice-select.min.js"></script>
      <!-- sidebar -->
      <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
      <script src="js/bootstrap-datepicker.min.js"></script>
      <script src="js/niceCountryInput.js"></script>
      <script src="js/custom.js"></script>
      <script>  AOS.init();</script>
   </body>
</html>