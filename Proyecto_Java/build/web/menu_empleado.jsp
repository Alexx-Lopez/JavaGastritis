<%-- 
    Document   : menu_empleado
    Created on : 22-abr-2018, 10:13:24
    Author     : Alexx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
        <meta name="description" content="">
        <meta name="viewport" content="initial-scale=0.5; maximum-scale=0.5; user-scalable=0;" />
        <meta name="keywords" content="javascript, dynamic, grid, layout, jquery plugin, flex layouts" />

        <!--freewall-->
        <script type="text/javascript" src="freewall/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="freewall/freewall.js"></script>
        <link rel="stylesheet" type="text/css" href="freewall/style.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!--********-->

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/tooplate-style.css">



        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>


        <!--fuentes-->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

        <!--css propio-->
        <link rel="stylesheet" href="style.css">
        <style>
            /*boton salir*/

            .btn_salir:focus {
                outline: 0px;
                box-shadow: 0px;
            }

            footer {
                color: white;
                text-align: center;
            }

            /*estilos para freewall*/

            .header {
                height: 100%;
            }

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

            .con_div,
            .icono_cuadro {
                width: 80px;
                height: 80px;
                margin: 0 auto;

            }

            .con_div{
                /*margin-top: 20%;*/
            }

            .icono_cuadro{
                margin-top: -40px;
                margin-left: -40px;
                left: 50%;
                top: 50%;
                position: absolute;
            }

            .cell:hover {
                cursor: pointer;
            }

            .handle:hover {
                cursor: move;
            }

            h5 {
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
    </head>
    <body>
        <header style="width: 100%;top:0;">
            <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: black !important; height: 90px;">


                <table>
                    <tr>
                        <td Style="vertical-align:middle; text-align:center;">
                            <img src="imagenes/estudiar.png" style="margin:0 auto;">
                        </td>
                        <td>
                            <h2 style="font-family:'Marck Script',cursive;font-size: 50px;color:white"> &nbsp; Biblioteca</h2>
                        </td>
                    </tr>
                </table>

                <div class="collapse navbar-collapse" id="navbarText" style="padding: 0px;">
                    <ul class="navbar-nav mr-auto justify-content-end" style="width: 100%;padding: 0px;">
                        <li class="nav-item">
                            <p style="color: white; font-size: small; margin-top: 20px;">
                                <span class="glyphicon glyphicon-search"></span> Busqueda
                            </p>
                        </li>
                        <li class="nav-item">
                            <p style="color: white; font-size: small; margin-top: 20px;">
                                <span class="glyphicon glyphicon-user"></span> Usuario
                            </p>
                        </li>
                        <li class="nav-item" style="margin-left:5px; margin-top: 15px;">
                            <div class="dropdown">
                                <button type="button" class="btn dropdown-toggle btn_salir" data-toggle="dropdown" style="color: white; font-size: large; background-color: transparent; box-shadow: 0px !important;">

                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#">
                                        <h5>Perfil</h5>
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <h5>Configuración</h5>
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <h5>Salir</h5>
                                    </a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>



        <div style="width:95%; min-height:550px; background-color:#f3e8e8ab; margin:0 auto; margin-top:20px; padding: 5px; color:white;">
            <div class="layout" style="margin: 0 auto;">
                <div id="freewall" class="free-wall">

                    <div class="cell size22" style="background-color:rgb(13, 130, 81);" data-position="0-1" data-handle=".handle">
                        <div class='cover'>
                            <div class="handle">
                                <span class="material-icons">open_with</span>
                            </div>
                            <h4>
                                <strong>Usuario</strong>
                            </h4>
                            <br>
                            <div class="con_div">
                                <img src="imagenes/usuario.png" class="icono_cuadro">
                            </div>

                        </div>
                    </div>
                    <div class='cell size21' style="background-color:#0d2873;" data-position="2-1" data-handle=".handle">
                        <div class='cover'>
                            <div class="handle">
                                <span class="material-icons">open_with</span>
                            </div>
                            <h4>
                                <strong>Restablecer Contraseña</strong>
                            </h4>
                            <br>
                            <div class="con_div">
                                <img src="imagenes/llave-de-una-casa.png" class="icono_cuadro">
                            </div>

                        </div>
                    </div>
                    <div class='cell size11' style="background-color:green;" data-position="1-6" data-handle=".handle">
                        <div class='cover'>
                            <div class="handle">
                                <span class="material-icons">open_with</span>
                            </div>
                            <h4>
                                <strong>Categorías</strong>
                            </h4>
                            <br>
                            <div class="con_div">
                                <img src="imagenes/bandeja-de-entrada.png" class="icono_cuadro">
                            </div>
                        </div>
                    </div>
                    <div class="cell size11" style="background-color:rgb(74, 62, 56);" data-position="0-4" data-handle=".handle">
                        <div class='cover'>
                            <div class="handle">
                                <span class="material-icons">open_with</span>
                            </div>
                            <h4>
                                <strong>Roles</strong>
                            </h4>
                            <br>
                            <div class="con_div">
                                <img src="imagenes/cliente.png" class="icono_cuadro">
                            </div>

                        </div>
                    </div>
                    <div class="cell size11" style="background-color:rgb(173, 14, 14);" data-position="0-3" data-handle=".handle">
                        <div class='cover'>
                            <div class="handle">
                                <span class="material-icons">open_with</span>
                            </div>
                            <h4>
                                <strong>Idiomas</strong>
                            </h4>
                            <br>
                            <div class="con_div">
                                <img src="imagenes/etiqueta-de-letra.png" class="icono_cuadro">
                            </div>

                        </div>
                    </div>
                    <div class="cell size21" style="background-color:rgb(13, 103, 130)" data-position="0-5" data-handle=".handle">
                        <div class='cover'>
                            <div class="handle">
                                <span class="material-icons">open_with</span>
                            </div>
                            <h4>
                                <strong>Ejemplares</strong>
                            </h4>
                            <br>
                            <div class="con_div">
                                <img src="imagenes/anadir-pagina.png" class="icono_cuadro">
                            </div>

                        </div>
                    </div>
                    <div class="cell size21" style="background-color:rgb(191, 91, 5);" data-position="2-5" data-handle=".handle">
                        <div class='cover'>
                            <div class="handle">
                                <span class="material-icons">open_with</span>
                            </div>
                            <h4>
                                <strong>Estadística</strong>
                            </h4>
                            <br>
                            <div class="con_div">
                                <img src="imagenes/analitica.png" class="icono_cuadro">
                            </div>

                        </div>
                    </div>
                    <div class="cell size21" style="background-color:rgb(117, 101, 20);" data-position="2-3" data-handle=".handle">
                        <div class='cover'>
                            <div class="handle">
                                <span class="material-icons">open_with</span>
                            </div>
                            <h4>
                                <strong>Préstamos a usuarios</strong>
                            </h4>
                            <br>
                            <div class="con_div">
                                <img src="imagenes/documento.png" class="icono_cuadro">
                            </div>

                        </div>
                    </div>
                    <div class="cell size21" style="background-color:#7a0d82;" data-position="1-3" data-handle=".handle">
                        <div class='cover'>
                            <div class="handle">
                                <span class="material-icons">open_with</span>
                            </div>
                            <h4>
                                <strong>Devoluciones</strong>
                            </h4>
                            <br>
                            <div class="con_div">
                                <img src="imagenes/regresar.png" class="icono_cuadro">
                            </div>

                        </div>
                    </div>
                    <div class="cell size11" style="background-color:rgb(189, 184, 20);" data-position="1-5" data-handle=".handle">
                        <div class='cover'>
                            <div class="handle">
                                <span class="material-icons">open_with</span>
                            </div>
                            <h4>
                                <strong>Mora</strong>
                            </h4>
                            <br>
                            <div class="con_div">
                                <img src="imagenes/dolar.png" class="icono_cuadro">
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer style="margin-top: 20px;">
            <h5>&copy; 2018 . Todos los derechos reservados</h5>
        </footer>

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
