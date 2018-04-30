<%-- 
    Document   : header
    Created on : 22-abr-2018, 11:05:00
    Author     : Alexx
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<header style="position:fixed; width: 100%;top:0; z-index: 3;">
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: black !important; height: 90px;">
                <table>
                    <tr>
                        <td Style="vertical-align:middle; text-align:center;">
                            <img src="imagenes/estudiar.png" style="margin:0 auto;">
                        </td>
                        <td>
                            <h2 style="font-family:'Marck Script',cursive;font-size: 50px;color:white"> &nbsp;<fmt:message key="header_lbl_biblioteca"/></h2>
                        </td>
                    </tr>
                </table>
            
            <div class="collapse navbar-collapse " id="navbarText" style="padding: 0px;">
                <ul class="navbar-nav mr-auto justify-content-end" style="width: 100%;">
                    <li class="nav-item">
                            <p style="color: white; font-size: small; margin-top: 20px;">
                                <span class="glyphicon glyphicon-search"></span> <fmt:message key="header_lbl_busqueda"/>
                             </p>
                    </li>
                    <li class="nav-item">
                        <p style="color: white; font-size: small; margin-top: 20px;">
                            <span class="glyphicon glyphicon-user"></span> <fmt:message key="header_lbl_usuario"/>
                        </p>
                    </li>
                    <li class="nav-item" style="margin-left:5px; margin-top: 15px;">
                        <div class="dropdown">
                                <button type="button" class="btn dropdown-toggle btn_salir" data-toggle="dropdown"  style="color: white; font-size: large; background-color: transparent; box-shadow: 0px !important;">
                                        
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#"><h5><fmt:message key="header_lbl_perfil"/></h5></a>
                                    <a class="dropdown-item" href="#"><h5><fmt:message key="header_lbl_Configuración"/></h5></a>
                                    <a class="dropdown-item" href="#"><h5><fmt:message key="header_lbl_Salir"/></h5></a>
                                    </div>
                              </div>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
