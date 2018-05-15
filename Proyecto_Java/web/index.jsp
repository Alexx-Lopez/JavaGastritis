<%-- 
    Document   : index
    Created on : 22-abr-2018, 9:44:48
    Author     : Alexx
--%>
<%@page session="true" language="java" import="java.util.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!--Seleccion de idioma del usuario-->
<c:if test="${param.locale!=null}">
    <fmt:setLocale value="${param.locale}" scope="session"/>
</c:if>

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
        <style type="text/css">
            .config_foto{
                width:200px;
                height:200px;
                border: 2px solid white;
                border-radius: 100px;
            }

            .config_foto:hover{
                transform: scale(1.3);
                border:8px solid orange;
            }
        </style>
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
                                                <h2 style="font-family:'Marck Script',cursive;font-size: 50px;color:#9d9d9d;"> &nbsp; <fmt:message key="i_header_lbl_biblioteca"/></h2>
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
                                        <span class="glyphicon glyphicon-home"></span> <fmt:message key="i_header_lbl_inicio"/></a>
                                </li>
                                <li>
                                    <a href="#" class="scroll-link" data-id="about">
                                        <span class="glyphicon glyphicon-eye-open"></span> <fmt:message key="i_header_lbl_acerca_de_nosotros"/></a>
                                </li>
                                <li>
                                    <a href="#" class="scroll-link" data-id="search">
                                        <span class="glyphicon glyphicon-search"></span> <fmt:message key="i_header_lbl_busqueda"/></a>
                                </li>
                                <li>
                                    <a href="#" class="scroll-link" data-id="inf">
                                        <span class="glyphicon glyphicon-earphone"></span> <fmt:message key="i_header_lbl_contactanos"/></a>
                                </li>
                                <li>
                                    <!-- <a href="#" class="scroll-link" data-id="contact">Contact Us</a>-->
                                    <a href="#" data-toggle="modal" data-target="#exampleModalCenter" style="outline: none;">
                                        <span class="glyphicon glyphicon-user" ></span> <fmt:message key="i_header_lbl_ingresar"/>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </header>


        <div style="width:60%; height:400px; margin: 0 auto;margin-top:200px;">
            <!--sección mensajes-->
            <c:if test='${param.error!=null}'>
                <div class="alert alert-danger alert-dismissible" style="width:60%;margin: 0 auto; float: none;font-size: initial;text-align: center;">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <c:choose>
                        <c:when test='${param.error=="Usuario y/o clave Incorrecto. Vuelve a intentarlo."}'>
                            <span><fmt:message key="i_mensaje_usuario_incorrecto"/></span>
                        </c:when>
                        <c:when test='${param.error=="Es obligatorio identificarse"}'>
                            <span><fmt:message key="i_mensaje_obligatorio_identificarse"/></span>
                        </c:when>
                        <c:when test='${param.error=="Acceso no permitido"}'>
                            <span><fmt:message key="i_mensaje_no_acceso"/></span>
                        </c:when>
                    </c:choose>
                </div>
            </c:if>
            <div id="carousel-example" class="carousel slide" data-ride="carousel" style=" width: 100%; height:400px; margin:0 auto;overflow:hidden;margin-top: 20px;">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example" data-slide-to="1"></li>
                    <li data-target="#carousel-example" data-slide-to="2"></li>
                </ol>

                <div class="carousel-inner">
                    <div class="item active">
                        <div class="carousel-caption">
                            <h3 style="color:white;"><fmt:message key="i_lbl_colegio"/></h3>
                            <p style="color:white;"><fmt:message key="i_lbl_amigos_de_don_bosco"/></p>
                        </div>
                        <a href="#" style="height:100%;">
                            <img src="imagenes/1.jpg" style="margin: 0 auto;" />
                        </a>
                    </div>
                    <div class="item" style="height:100%;">
                        <div class="carousel-caption">
                            <h3 style="color:white;"><fmt:message key="i_lbl_colegio"/></h3>
                            <p style="color:white;"><fmt:message key="i_lbl_amigos_de_don_bosco"/></p>
                        </div>
                        <a href="#">
                            <img src="imagenes/2.jpg" style="margin: 0 auto;" />
                        </a>
                    </div>
                    <div class="item" style="height:100%;">
                        <div class="carousel-caption">
                            <h3 style="color:white;"><fmt:message key="i_lbl_colegio"/></h3>
                            <p style="color:white;"><fmt:message key="i_lbl_amigos_de_don_bosco"/></p>
                        </div>
                        <a href="#">
                            <img src="imagenes/3.jpg" style="margin: 0 auto;"/>
                        </a>
                    </div>
                </div>

                <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>



        <div id="about" class="page-section" style="width:90%; height:600px; background-color:white; margin:0 auto; margin-top:200px;">
            <span>
                <h2 style="text-align:center;"><fmt:message key="i_lbl_acerca_de_nosotros"/></h2>
                <br>
                <br>
                <br>
                <div style="width:80%; margin: 0 auto;">
                    <p style="font-size:large;text-align: justify">
                        &nbsp;&nbsp;&nbsp;<fmt:message key="i_lbl_parrafo1"/></p>

                    <p style="font-size:large;text-align: justify">
                        &nbsp;&nbsp;&nbsp;<fmt:message key="i_lbl_parrafo2"/>
                    </p>
                </div>
            </span>
        </div>

        <div id="search" class="page-section" style="width:90%; height:600px; background-color:white; margin:0 auto; margin-top:200px;">
            <span>
                <h2 style="text-align:center;">Busqueda</h2>
            </span>
        </div>
        <div id="inf" class="page-section" style="width:90%; height:600px; background-color:white; margin:0 auto; margin-top:200px;">
            <span>
                <h2 style="text-align:center;"><fmt:message key="i_lbl_contactanos"/></h2>
                <br>
                <h4 style="text-align:center;"><b><fmt:message key="i_lbl_siguenos"/><b></h4>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-sm-3">
                                    <a href="https://www.facebook.com">
                                        <img src="imagenes/facebook.png" class="config_foto center-block">
                                    </a>
                                    <h5 style="text-align: center;"><b>Facebook</b></h5>
                                </div>
                                <div class="col-sm-3">
                                    <a href="https://www.twitter.com">
                                        <img src="imagenes/gorjeo.png" class="config_foto center-block">
                                    </a>
                                    <h5 style="text-align: center;"><b>Twitter</b></h5>
                                </div>
                                <div class="col-sm-3">
                                    <a href="https://www.instagram.com">
                                        <img src="imagenes/instagram.png" class="config_foto center-block">
                                    </a>
                                    <h5 style="text-align: center;"><b>Instagram</b></h5>
                                </div>
                                <div class="col-sm-3">
                                    <a href="https://www.youtube.com">
                                        <img src="imagenes/youtube.png"  class="config_foto center-block">
                                    </a>
                                    <h5 style="text-align: center;"><b>YouTube</b></h5>
                                </div>
                            </div>
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
                                            <h2 class="modal-title" id="exampleModalLongTitle"><fmt:message key="i_lbl_iniciar_sesion"/></h2>
                                        </div>



                                        <form action="Check_Login.jsp" method="post">
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for="usuario"><fmt:message key="i_lbl_usuario"/></label>
                                                    <input type="text" class="form-control" id="usuario" placeholder="<fmt:message key="i_lbl_usuario"/>" name="usuario" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="clave"><fmt:message key="i_lbl_contraseña"/></label>
                                                    <input type="password" class="form-control" id="clave" placeholder="<fmt:message key="i_lbl_contraseña"/>" name="clave" required>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <div class="form-group btn-block">
                                                    <button class="btn btn-lg btn-primary btn" type="submit"><fmt:message key="i_lbl_iniciar_sesion"/></button>
                                                    <button type="button" class="btn btn-lg btn-secondary" data-dismiss="modal"><fmt:message key="i_lbl_salir"/></button>

                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>


                            <footer style="margin-top: 200px; color:white;">

                                <br>

                                <h2><fmt:message key="i_lbl_titulo"/></h2>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <img src="imagenes/edwin.png" class="config_foto center-block">
                                        <h5 style="text-align: center;"><b>Edwin Francisco Escamilla Ramos</b></h5>
                                        <h5 style="text-align: center;"><fmt:message key="i_lbl_carrera"/></h5>
                                    </div>
                                    <div class="col-sm-3">
                                        <img src="imagenes/karina.png" class="config_foto center-block">
                                        <h5 style="text-align: center;"><b>Karina Magaly Marroquín García</b></h5>
                                        <h5 style="text-align: center;"><fmt:message key="i_lbl_carrera"/></h5>
                                    </div>
                                    <div class="col-sm-3">
                                        <img src="imagenes/alex.png" class="config_foto center-block">
                                        <h5 style="text-align: center;"><b>Erick Alexander Noyola López</b></h5>
                                        <h5 style="text-align: center;"><fmt:message key="i_lbl_carrera"/></h5>
                                    </div>
                                    <div class="col-sm-3">
                                        <img src="imagenes/douglas.png"  class="config_foto center-block">
                                        <h5 style="text-align: center;"><b>Douglas Alberto Ramirez Vasquez </b></h5>
                                        <h5 style="text-align: center;"><fmt:message key="i_lbl_carrera"/></h5>
                                    </div>
                                </div>
                                <hr>
                                <br>
                                <br>
                                <div style="width: 100%; text-align: center;text-decoration: none; color: white;">
                                    <a href="<%=request.getRequestURL()%>?locale=en"><b><fmt:message key="footer_lbl_idioma_ingles"/></b></a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="<%=request.getRequestURL()%>?locale=es"><b><fmt:message key="footer_lbl_idioma_español"/></b></a>
                                </div>
                                <br>
                                <h5 style="text-align: center;color:white;"><fmt:message key="footer_lbl_derechos_de_autor"/></h5>
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
                                        $('html, body').animate({scrollTop: 0}, 'slow');
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
                                    $('html,body').animate({scrollTop: targetOffset}, speed);
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
