<%-- 
    Document   : plantilla
    Created on : 22-abr-2018, 10:42:37
    Author     : Alexx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Biblioteca</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/tooplate-style.css">
    

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    


    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">


    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">

    <style>
        
        /*boton salir*/
        .btn_salir:focus{
            outline: 0px;
            box-shadow: 0px;
        }
        
        h5{
            text-shadow: none;
        }

        footer{
            color:white;
            text-align: center;
        }
    </style>
    </head>
    <body>
        <header style="position:fixed; width: 100%;top:0;">
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
            
            <div class="collapse navbar-collapse " id="navbarText" style="padding: 0px;">
                <ul class="navbar-nav mr-auto justify-content-end" style="width: 100%;">
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
                                <button type="button" class="btn dropdown-toggle btn_salir" data-toggle="dropdown"  style="color: white; font-size: large; background-color: transparent; box-shadow: 0px !important;">
                                        
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#"><h5>Perfil</h5></a>
                                        <a class="dropdown-item" href="#"><h5>Configuración</h5></a>
                                        <a class="dropdown-item" href="#"><h5>Salir</h5></a>
                                    </div>
                              </div>
                    </li>
                </ul>
            </div>
        </nav>
    </header>



    <div style="width:95%; height:500px; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px">
    </div>

    <footer style="margin-top: 20px;">
        <h5>&copy; 2018 . Todos los derechos reservados</h5>
    </footer>
    </body>
</html>
