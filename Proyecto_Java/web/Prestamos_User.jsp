<%-- 
    Document   : Prestamos_User
    Created on : 05-14-2018, 09:15:47 PM
    Author     : karin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Herramientas.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!--Seleccion de idioma del usuario-->
<c:if test="${param.locale!=null}">
    <fmt:setLocale value="${param.locale}" scope="session"/>
</c:if>

<!--Consulta SQL -->
<sql:query dataSource="jdbc/mysql" var="consulta">
    select * from registro
</sql:query>
    
<!--Consulta SQL -->
<sql:query dataSource="jdbc/mysql" var="consulta_1">
    select * from copia
</sql:query>
    
<!-- scriptlet para mantener la pagina con sesión-->
<%@include file="Sesion/scriptlet_sesion_empleado.jsp"%>
    
<%-- Scriptlet para que la página trabaje con la sesión iniciada en el login --%>
<%--
<%@ page session="true" %>
<jsp:scriptlet>
    HttpSession sesionOk = request.getSession();
    if (sesionOk.getAttribute("usuario") == null){
</jsp:scriptlet>        
<jsp:forward page="index.jsp">
    <jsp:param name="error" value="Es obligatorio identificarse"/>
</jsp:forward>
<jsp:scriptlet>
    } 
</jsp:scriptlet>--%>
<%----------------------------------------------------------------------------%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- css y js a ocupar-->
        <%@include file="Estructura_plantilla/head.jsp"%>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <style type="text/css">
            .selector{
                height: 35px !important;
            }

            legend{
                border-bottom: 0px !important;
                width: auto !important;
                margin-bottom: 0px !important;
            }

            fieldset{
                border: 1px solid black !important;
                padding: 10px;
            }
            /*estilos tabla de registros*/
            #tabla_registro table, #tabla_registro th, #tabla_registro td 
            {
                border: 1px solid black;
            }

            #tabla_registro thead
            {
                height: 50px;
            }

            #tabla_registro
            {
                background-color: #1ABC9C !important;
                
                display: table !important;
                border-collapse: separate !important;
                border-spacing: 1px !important;
                border-color: black !important;
            }

            #tabla_registro tr:hover
            {
                background-color: #08463a !important;
                color:white !important;
                border-color: white !important;
            }

            #regresar{
                background-color: #7d8384;
            }
            
            #regresar:hover{
                background-color: #535b5d;
            }
        </style>
        <script type="text/javascript">
            function iniciar() {
                var elements = document.getElementsByName('control');
                elements[0].checked = true;
                nuevo();
            }

        

            /*funcion para cerrar la ventana de aviso*/
            window.setTimeout(function () {
                $(".alert").fadeTo(500, 0).slideUp(500, function () {
                    $(this).remove();
                });
            }, 4000);
       
        
            function  buscar()
            {
                
                $("#txt_nombre").attr("required");
                $("#txt_codigo").attr("required");
                
            }
        </script>
    </head>

    <body onload="iniciar();">
        <!--codigo del header-->
        <%@include file="Estructura_plantilla/header.jsp"%>

        <!--contenedor-->
        <form name="datos" role="form" action="Consultas_Prestamo.jsp" method="POST" accept-charset="ISO-8859-1">
            <div style="width:95%; height:auto; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px; z-index:10;">
                
                <a href="menu_empleado.jsp" class="btn btn-info" role="button" id="regresar">
                    <img alt="Regresar" width="40px" height="30px" onmouseout="this.src='imagenes/flecha-de-deshacer.png';" onmouseover="this.src='imagenes/flecha_azul.png';" src="imagenes/flecha-de-deshacer.png"/>
                </a>
                
                <div style="width:80%; margin:0 auto;">
                    <h1 style="text-align:center;"><b><fmt:message key="prestamo_lbl_tema"/></b></h1>
                    <hr style="border:2px solid grey;">

                    <%-- Area de mensaje o avisos --%>
                    <c:if test="${param.resultado!=null}">
                        <c:choose>
                            <c:when test='${param.resultado=="Registro_existente"}'>
                                <div class="alert alert-danger alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="prestamo_mensaje_registro_repetido" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="datos_ingresados"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="prestamo_mensaje_ingreso" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="datos_actualizados"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="prestamo_mensaje_actualizacion" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="datos_eliminados"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="prestamo_mensaje_eliminacion" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                        </c:choose>
                    </c:if> 
                    
                    
                    <table  style="width: 100%;">
                        <tr>
                            <td align="center">
                                            
                            <legend style="font-size: smaller;"><b><fmt:message key="prestamo_lbl"/></b></legend>
                            <table style="width: 100%;">
                              
                                <tr>
                                    <td>
                                        <b align="center"><fmt:message key="prestamo_lbl_NomUser"/>:</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="input-group">
                                        <input type="text" class="form-control"  placeholder="<fmt:message key="prestamo_nombre"/>" id="txt_nombre" name="txt_nombre" pattern="[A-Za-z0-9]+" required="" title="Solo se permiten letras y números. ">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                        </div>
                                    </td>
                                </tr>
                               
                            </table>
                    

                          
                                
                                
              
                    
                            <legend style="font-size: smaller;"><b><fmt:message key="prestamo_lbl_mat"/></b></legend>
                            <table style="width: 100%;">
                               
                                <tr>
                                    <td>
                                        <b align="center"><fmt:message key="prestamo_lbl_cod_mat"/>:</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="input-group">
                                        <input type="text" class="form-control"  placeholder="<fmt:message key="prestamo_cod"/>" id="txt_codigo" name="txt_codigo" pattern="[0-9]+" required="" title="Solo se permiten números. ">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-compressed"></i></span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <tr>
                                    <td align="center">
                                        <button type="submit" class="btn btn-primary" id="btn_buscar" name="buscar" onclick="buscar();"><fmt:message key="prestamo_btn_buscar"/></button>
                                    </td>
                                </tr>
                                </tr>
                            </table>
                      
                                
                            </td> 
                        
                       
                            <td align="center">
                                      
                           
                            <table style="width: 100%;">
                                <tr>
                                    <td>
                                        <br>
                                        <b align="center"><fmt:message key="prestamo_rbtn_nomUser"/>:</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br>
                                        <b align="center"><fmt:message key="prestamo_rbtn_tipoUser"/>:</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br>
                                        <b align="center"><fmt:message key="prestamo_rbtn_max"/>:</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br>
                                        <b align="center"><fmt:message key="prestamo_rbtn_multa"/>:</b>
                                    </td>
                                </tr>
                                
                            </table>
                   
                            </td> 
                            <td align="center">
                               
                              
                            <legend style="font-size: smaller;"><b><fmt:message key="prestamo_lbl_op"/></b></legend>
                            <table>
                                <tr>
                                    <td align="center">
                                    <a href="Prestamos_User.jsp" style="text-decoration:none;color:white;">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <button type="submit" class="btn btn-primary" id="btn_prestar" name="prestar" onclick="prestar();"><fmt:message key="prestamo_btn_prestar"/></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br>
                                        <b align="center"><fmt:message key="prestamo_lbl_ahora"/>:</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br>
                                        <b align="center"><fmt:message key="prestamo_lbl_devolver"/>:</b>
                                    </td>
                                </tr>
                                
                            </table>
              
                                
                            </td> 
                      
                         </tr>
                        
                    </table>
                    

                                    
                <br>
                
                
                  
                     
                      
                          
                                <table id="tabla_registro" class="table table-striped table-hover table-bordered" >
                                    <thead>
                                        <tr>
                                            <td align="center"><b>ID</b></td>
                                            <td align="center"><b><fmt:message key="prestamo_thead_tabla_F_Pres"/></b></td>
                                            <td align="center"><b><fmt:message key="prestamo_thead_tabla_F_Dev"/></b></td>
                                            <td align="center"><b><fmt:message key="prestamo_thead_tabla_Multa"/></b></td>
                                            <td align="center"><b><fmt:message key="prestamo_thead_tabla_IdUsu"/></b></td>
                                            <td align="center"><b><fmt:message key="prestamo_thead_tabla_Item"/></b></td>
                                            <td align="center"><b><fmt:message key="prestamo_thead_tabla_Est"/></b></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="name" items="${consulta.rows}">
                                            <tr>
                                                <td align="center"><c:out value="${name.idRegistro}"/></td>
                                                <td align="center"><c:out value="${name.F_Prestamo}"/></td>
                                                <td align="center"><c:out value="${name.F_Devuelto}"/></td>
                                                <td align="center"><c:out value="${name.Multa}"/></td>
                                                <td align="center"><c:out value="${name.idUsuarios}"/></td>
                                                <td align="center"><c:out value="${name.Item}"/></td>
                                                <td align="center"><c:out value="${name.Estado_registro}"/></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                   
                
                    
                 
                                        
                <br>
                
                
                     
                                <table id="tabla_registro" class="table table-striped table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <td align="center"><b><fmt:message key="prestamo_thead_tabla_cop_item"/></b></td>
                                            <td align="center"><b><fmt:message key="prestamo_thead_tabla_cop_Est_Mat"/></b></td>
                                            <td align="center"><b><fmt:message key="prestamo_thead_tabla_cop_Ubicacion"/></b></td>
                                            <td align="center"><b><fmt:message key="prestamo_thead_tabla_cop_Cod_Mat"/></b></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="name" items="${consulta_1.rows}">
                                            <tr>
                                                <td align="center"><c:out value="${name.Item}"/></td>
                                                <td align="center"><c:out value="${name.EstadoMaterial}"/></td>
                                                <td align="center"><c:out value="${name.Ubicacion}"/></td>
                                                <td align="center"><c:out value="${name.Codigo_Material}"/></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>

                </div>                      
        </form>

        <!--codigo del footer-->
        <%@include file="Estructura_plantilla/footer.jsp"%>

    </body>
</html>