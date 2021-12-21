<%-- 
    Document   : principal
    Created on : 19 dic. 2021, 23:56:09
    Author     : Augusto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
              <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Agencia de Viajes</title>
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
    <body class="main-layout">
   <% HttpSession session1 = request.getSession();
        if(session1.getAttribute("usuario")==null){
            response.sendRedirect("login.jsp");
        }else{
   %>
   
  <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#"/></div>
      </div>
      <!-- end loader -->
      <!-- header -->
      <div class="header">
         <div class="top_header">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="select_main">
                        <div class="sign">
                           <span> <a href="login.jsp">Login</a> </span>   
                        </div>

                     </div>
                  </div>
               </div>
            </div>
         </div>
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
                                 <a class="nav-link" href="about.html">Servicios</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="pakages.html">Paquetes </a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="cliente.jsp">Clientes </a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="blog.html">Ventas </a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="contact.html">Usuarios </a>
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
      <!-- end header -->
      <!-- top -->
      <div class="full_bg">
         <div class="slider_main">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <!-- carousel code -->
                     <div id="carouselExampleIndicators" class="carousel slide">
                        <ol class="carousel-indicators">
                           <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                           <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                           <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                           <!-- first slide -->
                           <div class="carousel-item active">
                              <div class="carousel-caption relative">
                                 <div class="row">
                                    <div  class="col-md-10 offset-md-1">
                                       <div class="board">
                                          <h1>Now start <br>Your traveling </h1>
                                          <p>when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed towhen looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to</p>
                                          <a class="read_more" href="Javascript:void(0)">Read More</a>
                                          <a class="read_more" href="Javascript:void(0)">Contact us</a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- second slide -->
                           <div class="carousel-item">
                              <div class="carousel-caption relative">
                                 <div class="row">
                                    <div  class="col-md-10 offset-md-1">
                                       <div class="board">
                                          <h1>Now start <br>Your traveling </h1>
                                          <p>when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed towhen looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to</p>
                                          <a class="read_more" href="Javascript:void(0)">Read More</a>
                                          <a class="read_more" href="Javascript:void(0)">Contact us</a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- third slide-->
                           <div class="carousel-item">
                              <div class="carousel-caption relative">
                                 <div class="row">
                                    <div  class="col-md-10 offset-md-1">
                                       <div class="board">
                                          <h1>Now start <br>Your traveling </h1>
                                          <p>when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed towhen looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to</p>
                                          <a class="read_more" href="Javascript:void(0)">Read More</a>
                                          <a class="read_more" href="Javascript:void(0)">Contact us</a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- controls -->
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <i class="fa fa-angle-left" aria-hidden="true"></i>
                        <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                        <span class="sr-only">Next</span>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end banner -->
 
 
      <!-- packages -->
      <div class="packages">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage text_align_center ">
                     <h2>World Place Packages</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class=" col-md-6">
                  <div id="ho_img" class="packages_box" data-aos="fade-right" >
                     <figure><img src="images/packag1.jpg" alt="#"/></figure>
                     <div class="tuscany">
                        <div class="tusc text_align_left">
                           <div class="italy">
                              <h3>Tuscany</h3>
                              <span><img src="images/loca.png" alt="#"/> Italy</span>
                           </div>
                           <div class="italy_right">
                              <h3>Price</h3>
                              <span>$1000.0</span>
                           </div>
                        </div>
                        <p>Content here, content here', making it look like readable English. Many desktop publishing packagesContent here, content here', making it look like readable English. Many desktop publishing packages and web page editors now us</p>
                        <div class="tusc">
                           <a class="read_more" href="Javascript:void(0)">Read More</a>
                           <a class="read_more" href="Javascript:void(0)">Book Now</a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class=" col-md-6">
                  <div id="ho_img" class="packages_box" data-aos="fade-left">
                     <figure><img src="images/packag2.jpg" alt="#"/></figure>
                     <div class="tuscany">
                        <div class="tusc text_align_left">
                           <div class="italy">
                              <h3>Pais</h3>
                              <span><img src="images/loca.png" alt="#"/> Italy</span>
                           </div>
                           <div class="italy_right">
                              <h3>Price</h3>
                              <span>$1000.0</span>
                           </div>
                        </div>
                        <p>Content here, content here', making it look like readable English. Many desktop publishing packagesContent here, content here', making it look like readable English. Many desktop publishing packages and web page editors now us</p>
                        <div class="tusc">
                           <a class="read_more" href="Javascript:void(0)">Read More</a>
                           <a class="read_more" href="Javascript:void(0)">Book Now</a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class=" col-md-6">
                  <div id="ho_img" class="packages_box" data-aos="fade-right" >
                     <figure><img src="images/packag3.jpg" alt="#"/></figure>
                     <div class="tuscany">
                        <div class="tusc text_align_left">
                           <div class="italy">
                              <h3>San Francisco</h3>
                              <span><img src="images/loca.png" alt="#"/> United States
                              </span>
                           </div>
                           <div class="italy_right">
                              <h3>Price</h3>
                              <span>$1000.0</span>
                           </div>
                        </div>
                        <p>Content here, content here', making it look like readable English. Many desktop publishing packagesContent here, content here', making it look like readable English. Many desktop publishing packages and web page editors now us</p>
                        <div class="tusc">
                           <a class="read_more" href="Javascript:void(0)">Read More</a>
                           <a class="read_more" href="Javascript:void(0)">Book Now</a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class=" col-md-6">
                  <div id="ho_img" class="packages_box" data-aos="fade-left">
                     <figure><img src="images/packag4.jpg" alt="#"/></figure>
                     <div class="tuscany">
                        <div class="tusc text_align_left">
                           <div class="italy">
                              <h3>Phuket</h3>
                              <span><img src="images/loca.png" alt="#"/> Thailandia</span>
                           </div>
                           <div class="italy_right">
                              <h3>Price</h3>
                              <span>$1000.0</span>
                           </div>
                        </div>
                        <p>Content here, content here', making it look like readable English. Many desktop publishing packagesContent here, content here', making it look like readable English. Many desktop publishing packages and web page editors now us</p>
                        <div class="tusc">
                           <a class="read_more" href="Javascript:void(0)">Read More</a>
                           <a class="read_more" href="Javascript:void(0)">Book Now</a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-md-12">
                  <a class="read_more" href="Javascript:void(0)">See More</a>
               </div>
            </div>
         </div>
      </div>
      <!-- end packages -->
      <!-- about -->
      <div class="about">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage text_align_center">
                     <h2>About Our Company</h2>
                  </div>
               </div>
               <div class="col-md-10 offset-md-1">
                  <div class="about_text text_align_center">
                     <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentiallyLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially
                     </p>
                     <a class="read_more" href="about.html">Read More</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end about -->
      <!-- customers -->
     
      <!-- end customers -->
      <!--  footer -->
      <footer>
         <div class="footer">
            <div class="container">
               <div class="row">
                  <div class="col-md-12 ">
                     <div class="letter text_align_left">
                        <h2>Contact Us</h2>
                     </div>
                  </div>
                  <div class="col-md-5">
                     <form id="request" class="main_form">
                        <div class="row">
                           <div class="col-md-12 ">
                              <input class="cont_in" placeholder="Full Name" type="type" name=" Name"> 
                           </div>
                           <div class="col-md-12">
                              <input class="cont_in" placeholder="Your Email" type="type" name="Email"> 
                           </div>
                           <div class="col-md-12">
                              <input class="cont_in" placeholder="Phone Number" type="type" name="Phone Number">                          
                           </div>
                           <div class="col-md-12">
                              <input class="cont_in" placeholder="Your Words" type="type" name="Words"> 
                           </div>
                           <div class="col-md-12">
                              <button class="send_btnt">Send</button>
                           </div>
                        </div>
                     </form>
                  </div>
                  <div class="col-md-4 ">
                     <ul class="conta">
                        <li><i class="fa fa-map-marker" aria-hidden="true"></i>Locations 
                        </li>
                        <li><i class="fa fa-phone" aria-hidden="true"></i>+01 1234567890</li>
                        <li> <i class="fa fa-envelope" aria-hidden="true"></i><a href="Javascript:void(0)"> demo@gmail.com</a></li>
                     </ul>
                  </div>
                  <div class="col-md-3">
                     <div class="follow text_align_left">
                        <h3>Follow Us</h3>
                        <ul class="social_icon ">
                           <li><a href="Javascript:void(0)"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                           <li><a href="Javascript:void(0)"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                           <li><a href="Javascript:void(0)"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                           <li><a href="Javascript:void(0)"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        </ul>
                     </div>
                  </div>
                  <div class="col-md-12">
                     <div class="follow letter text_align_left">
                        <h3>Newsletter</h3>
                        <form class="form_subscri">
                           <input class="newsl" placeholder="Email" type="text" name="Email">
                           <button class="subsci_btn">subscribe</button>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
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

   
   
   <% }%>
       
    </body>
</html>
