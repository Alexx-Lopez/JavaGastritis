<%-- 
    Document   : menu_admin
    Created on : 22-abr-2018, 10:08:48
    Author     : Alexx
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- scriptlet para mantener la pagina con sesión-->
<%@include file="Sesion/scriptlet_sesion_admin.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!--freewall-->
        <script type="text/javascript" src="freewall/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="freewall/freewall.js"></script>
        <link rel="stylesheet" type="text/css" href="freewall/style.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!--********-->

        <!--fuentes-->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">

        <!--<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>-->

        <!-- css y js a ocupar-->
        <%@include file="Estructura_plantilla/head.jsp"%>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!--css propio-->
        <link rel="stylesheet" href="style.css">
        <style>        
            /*boton salir*/
            .btn_salir:focus{
                outline: 0px;
                box-shadow: 0px;
            }

            /*estilos para freewall*/

            @keyframes start {
                from {
                    transform: scale(0);
                }
                to {
                    transform: scale(1);
                }
            }

            @-webkit-keyframes start {
                from {
                    -webkit-transform: scale(0);
                }
                to {
                    -webkit-transform: scale(1);
                }
            }

            .free-wall .cell[data-state="init"] {
                display: none;
            }

            .free-wall .cell[data-state="start"] {
                display: block;
                animation: start 0.5s;
                -webkit-animation: start 0.5s;
            }

            .free-wall .brink[data-state="move"] {
                transition: top 0.5s, left 0.5s, width 0.5s, height 0.5s;
                -webkit-transition: top 0.5s, left 0.5s, width 0.5s, height 0.5s;
            }


            /*Estilos de los cuadros*/
            .free-wall {
                margin: 15px;
            }

            .cell {
                cursor: move;
            }

            .cell .cover {
                padding: 15px;
            }

            .handle {
                border: 1px dotted orange;
                padding: 4px;
                width: auto;
                display: inline-block;
                border: none;
                float:left;
            }

            .con_div, .icono_cuadro {
                width: 100px;
                height: 100px;
                margin: 0 auto;
            }

            .icono_cuadro{
                margin-top: -40px;
                margin-left: -40px;
                left: 50%;
                top: 50%;
                position: absolute;
            }

            .cell:hover{
                cursor: pointer;
            }

            .handle:hover{
                cursor: move;
            }

            h5{
                text-shadow: none;
            }

            .cover{
                height: 100%;
            }

            .cell:hover{
                box-shadow: inset 0px 0px 220px black;
                transform: scale(1.1);
            }
            /*termina estilos freewall*/
        </style>

        <script>
            /*funcion para cerrar la ventana de aviso*/
            window.setTimeout(function () {
                $(".alert").fadeTo(500, 0).slideUp(500, function () {
                    $(this).remove();
                });
            }, 4000);
        </script>
    </head>
    <body>
        <!--codigo del header-->
        <%@include file="Estructura_plantilla/header.jsp"%>

        <div style="width:95%; min-height:550px; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px; color:white;">
            <c:if test='${param.inicio!=null}'>
                <div class="alert alert-info alert-dismissible" style="width: 30%;margin: 0 auto; float: none;font-size: initial;text-align: center;">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <span><c:out value="${param.inicio}"/></span>
                </div>
            </c:if>

            <div class="layout" style="margin: 0 auto;">
                <div id="freewall" class="free-wall">

                    <div class="cell size32" style="background-color:#7a0d82;" data-position="0-0" data-handle=".handle">
                        <div class='cover'>
                            <div class="handle">
                                <span class="material-icons">open_with</span>
                            </div>
                            <a href="Mantenimiento_Empleado.jsp" style="text-decoration:none;color:white;">
                                <div style="height:100%;width:100%;">
                                    <h4><strong>Empleados</strong></h4>
                                    <div class="con_div">
                                        <img src="imagenes/usuario.png" class="icono_cuadro">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class='cell size22' style="background-color:blue;" data-position="0-3" data-handle=".handle">

                        <div class='cover'>
                            <div class="handle">
                                <span class="material-icons">open_with</span>
                            </div>
                            <a href="Mantenimiento_Turno.jsp" style="text-decoration:none;color:white;">
                                <div style="height:100%;width:100%;">
                                    <h4><strong>Turnos</strong></h4>
                                    <div class="con_div">
                                        <img src="imagenes/reloj-con-esfera-blanca.png" class="icono_cuadro">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class='cell size32' style="background-color:green;" data-position="0-5" data-handle=".handle">
                        <div class='cover'>
                            <div class="handle">
                                <span class="material-icons">open_with</span>
                            </div>
                            <a href="Mantenimiento_Cargo.jsp" style="text-decoration:none;color:white;">
                                <div style="height:100%;width:100%;">
                                    <h4><strong>Cargos</strong></h4>
                                    <div class="con_div">
                                        <img src="imagenes/collaboration.png" class="icono_cuadro">
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="Estructura_plantilla/footer.jsp"%>

        <!--script-->
        <script type="text/javascript">

            var wall = new Freewall("#freewall");
            wall.reset({
                draggable: true,
                selector: '.cell',
                animate: true,
                cellW: 150,
                cellH: 150,
                onResize: function () {
                    wall.refresh();
                },
                onBlockMove: function () {
                    console.log(this);
                },
                onResize: function () {
                    wall.fitWidth();
                }
            });
            wall.fitWidth();
            // for scroll bar appear;
            $(window).trigger("resize");
        </script>
    </body>
</html>
