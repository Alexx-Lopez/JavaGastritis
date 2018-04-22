<%-- 
    Document   : index
    Created on : 22-abr-2018, 9:44:48
    Author     : Alexx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Biblioteca Java</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/fontAwesome.css">
    <link rel="stylesheet" href="css/hero-slider.css">
    <link rel="stylesheet" href="css/tooplate-style.css">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

    <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">
    </head>
    <body>
        <header>
        <div class="header bg-dark navbar-dark" style="height:100px;">
            <div class="container">
                <nav class="navbar navbar-inverse" role="navigation">
                    <div class="navbar-header">
                        <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="#" class="navbar-brand scroll-top">
                            <div>
                                <table>
                                    <tr>
                                        <td Style="vertical-align:middle; text-align:center;">
                                            <img src="imagenes/estudiar.png" style="margin:0 auto;">
                                        </td>
                                        <td>
                                            <h2 style="font-family:'Marck Script',cursive;font-size: 50px;"> &nbsp; Biblioteca</h2>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </a>
                    </div>

                    <div id="main-nav" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav" style="font-family: 'Marck Script', cursive !important;">
                            <li>
                                <a href="#" class="scroll-top">
                                    <span class="glyphicon glyphicon-home"></span> Inicio</a>
                            </li>
                            <li>
                                <a href="#" class="scroll-link" data-id="about">
                                    <span class="glyphicon glyphicon-eye-open"></span> Acerca de Nosotros</a>
                            </li>
                            <li>
                                <a href="#" class="scroll-link" data-id="search">
                                    <span class="glyphicon glyphicon-search"></span> Búsqueda</a>
                            </li>
                            <li>
                                <a href="#" class="scroll-link" data-id="inf">
                                    <span class="glyphicon glyphicon-earphone"></span> Contactanós</a>
                            </li>
                            <li>
                                <!-- <a href="#" class="scroll-link" data-id="contact">Contact Us</a>-->
                                <a href="#" data-toggle="modal" data-target="#exampleModalCenter">
                                    <span class="glyphicon glyphicon-user"></span> Ingresar</a>

                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </header>
        
        <div id="carousel-example" class="carousel slide" data-ride="carousel" style=" width: 60%; height:400px; margin:0 auto;overflow:hidden; margin-top:200px;">
        <ol class="carousel-indicators">
            <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example" data-slide-to="1"></li>
            <li data-target="#carousel-example" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner">
            <div class="item active">
                <a href="#" style="height:100%;">
                    <img src="imagenes/1.jpg" style="margin: 0 auto;" />
                </a>
                <div class="carousel-caption">
                    <h3>Colegio</h3>
                    <p>Amigos de Dosco</p>
                </div>
            </div>
            <div class="item" style="height:100%;">
                <a href="#">
                    <img src="imagenes/2.jpg" style="margin: 0 auto;" />
                </a>
                <div class="carousel-caption">
                    <h3>Colegio</h3>
                    <p>Amigos de Dosco</p>
                </div>
            </div>
            <div class="item" style="height:100%;">
                <a href="#">
                    <img src="imagenes/3.jpg" style="margin: 0 auto;"/>
                </a>
                <div class="carousel-caption">
                    <h3>Colegio</h3>
                    <p>Amigos de Dosco</p>
                </div>
            </div>
        </div>

        <a class="left carousel-control" href="#carousel-example" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>



    <div id="about" class="page-section" style="width:90%; height:600px; background-color:white; margin:0 auto; margin-top:200px;">
        <span>
            <h2 style="text-align:center;">Acerca de nosotros</h2>
        </span>
    </div>

    <div id="search" class="page-section" style="width:90%; height:600px; background-color:white; margin:0 auto; margin-top:200px;">
        <span>
            <h2 style="text-align:center;">Busqueda</h2>
        </span>
    </div>

    <div id="inf" class="page-section" style="width:90%; height:600px; background-color:white; margin:0 auto; margin-top:200px;">
        <span>
            <h2 style="text-align:center;">Contactanós</h2>
        </span>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document" style="margin-top:200px; border: 2px solid black; border-radius: 20px; padding: 30px; background-color: #a4b7a3;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h2 class="modal-title" id="exampleModalLongTitle">Iniciar Sesión</h2>
                </div>
                <form action="" method="post">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="usuario">Usuario</label>
                            <input type="text" class="form-control" id="usuario" placeholder="Usuario" name="usuario" required>
                        </div>
                        <div class="form-group">
                            <label for="clave">Password:</label>
                            <input type="password" class="form-control" id="clave" placeholder="Password" name="clave" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="form-group btn-block">
                            <button class="btn btn-lg btn-primary btn" type="submit">Iniciar sesión</button>
                            <button type="button" class="btn btn-lg btn-secondary" data-dismiss="modal">Salir</button>

                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <footer style="margin-top: 200px;">

    </footer>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>

    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // navigation click actions 
            $('.scroll-link').on('click', function (event) {
                event.preventDefault();
                var sectionID = $(this).attr("data-id");
                scrollToID('#' + sectionID, 750);
            });
            // scroll to top action
            $('.scroll-top').on('click', function (event) {
                event.preventDefault();
                $('html, body').animate({ scrollTop: 0 }, 'slow');
            });
            // mobile nav toggle
            $('#nav-toggle').on('click', function (event) {
                event.preventDefault();
                $('#main-nav').toggleClass("open");
            });
        });
        // scroll function
        function scrollToID(id, speed) {
            var offSet = 50;
            var targetOffset = $(id).offset().top - offSet;
            var mainNav = $('#main-nav');
            $('html,body').animate({ scrollTop: targetOffset }, speed);
            if (mainNav.hasClass("open")) {
                mainNav.css("height", "1px").removeClass("in").addClass("collapse");
                mainNav.removeClass("open");
            }
        }
        if (typeof console === "undefined") {
            console = {
                log: function () { }
            };
        }
    </script>
    </body>
</html>
