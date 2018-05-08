<%-- 
    Document   : Mantenimiento_Idiomas
    Created on : 05-may-2018, 19:35:17
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

<!--Consulta SQL para alimentar el select-->
<sql:query dataSource="jdbc/mysql" var="consulta">
    select * from idiomas
</sql:query>
    
<%-- Scriptlet para que la página trabaje con la sesión iniciada en el login --%>
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
</jsp:scriptlet>
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
                width: 100%;
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

            function nuevo() {

                var b_nuevo = document.getElementById('btn_guardar');
                var b_modificar = document.getElementById('btn_modificar');
                var b_eliminar = document.getElementById('btn_eliminar');
                var txt_idiomas = document.getElementById('txt_idiomas');
                
                b_nuevo.disabled = false;
                b_modificar.disabled = true;
                b_eliminar.disabled = true;
                txt_idiomas.style.display = 'block';
                
            }

            function editar() {

                var b_nuevo = document.getElementById('btn_guardar');
                var b_modificar = document.getElementById('btn_modificar');
                var b_eliminar = document.getElementById('btn_eliminar');
                var txt_idiomas = document.getElementById('txt_idiomas');
                var select = document.getElementById('select_idiomas');
                b_nuevo.disabled = true;
                b_modificar.disabled = false;
                b_eliminar.disabled = false;
                txt_idiomas.style.display = 'none';
                select.style.display = 'block';
                document.datos.txt_descripcion.value = "";
            }

            function seleccionar() {
                var cmb_idiomas = document.getElementById("select_idiomas");
                if (cmb_idiomas.value != "") {
            <c:forEach var="name" items="${consulta.rows}">
                    var nombre = '<c:out value="${name.Nombre}"/>';
                    
            </c:forEach>
                } 

            }

            /*funcion para cerrar la ventana de aviso*/
            window.setTimeout(function () {
                $(".alert").fadeTo(500, 0).slideUp(500, function () {
                    $(this).remove();
                });
            }, 4000);
            //quitar los required
            //
            //guardar
            function guardar() {
                
                $("#txt_idiomas").attr("required");
                $("#select_idiomas").attr("required");
                
            }

            function actualizar() {
                $("#txt_idiomas").removeAttr("required");
                $("#select_idiomas").attr("required");
                
            }

            function eliminar() {
                $("#select_idiomas").attr("required");
                $("#txt_idiomas").removeAttr("required");
                
                //alert("hola");
            }
        </script>
    </head>
    <body onload="iniciar();">
        <!--codigo del header-->
        <%@include file="Estructura_plantilla/header.jsp"%>

        <!--contenedor-->
        <form name="datos" role="form" action="Consultas_Cargo.jsp" method="POST" accept-charset="ISO-8859-1">
            <div style="width:95%; height:auto; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px; z-index:10;">
                
                <a href="menu_admin.jsp" class="btn btn-info" role="button" id="regresar">
                    <img alt="Regresar" width="40px" height="30px" onmouseout="this.src='imagenes/flecha-de-deshacer.png';" onmouseover="this.src='imagenes/flecha_azul.png';" src="imagenes/flecha-de-deshacer.png"/>
                </a>
                
                <div style="width:32%; margin:0 auto;">
                    <h1 style="text-align:center;"><b><fmt:message key="idioma_lbl_tema"/></b></h1>
                    <hr style="border:2px solid grey;">

                    <%-- Area de mensaje o avisos --%>
                    <c:if test="${param.resultado!=null}">
                        <c:choose>
                            <c:when test='${param.resultado=="Registro_existente"}'>
                                <div class="alert alert-danger alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="idioma_mensaje_registro_repetido" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="datos_ingresados"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="idiomas_mensaje_ingreso" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="datos_actualizados"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="idiomas_mensaje_actualizacion" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="datos_eliminados"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="idiomas_mensaje_eliminacion" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                        </c:choose>
                    </c:if> 
                    <br>
                    <div>
                        <fieldset>
                            <legend style="font-size: smaller;"><b><fmt:message key="idiomas_lbl_control"/></b></legend>
                            <table style="width: 100%;">
                                <tr>
                                    <td align="center">
                                        <input type="radio" name="control" value="" onclick="nuevo();"> <fmt:message key="idiomas_rbtn_nuevo"/>
                                    </td>

                                    <td align="center">
                                        <input type="radio" name="control" value="" onclick="editar();"> <fmt:message key="idiomas_rbtn_editar"/>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>

                    </div>
                    <br>
                    <b><fmt:message key="idiomas_lbl_idiomas"/>:</b>
                    <div class="input-group">
                        <input type="text" class="form-control"  placeholder="<fmt:message key="idiomas_placeholder_idiomas"/>" id="txt_idiomas" name="txt_idiomas" required="">
                        <select class="form-control selector" name="cmb_idiomas" id="select_idiomas" onchange="seleccionar();" required="">
                            <option value=""><fmt:message key="idiomas_select_idiomas"/></option>

                            <c:forEach var="name" items="${consulta.rows}">
                                <option><c:out value="${name.nombre_idioma}"/></option>
                            </c:forEach>

                        </select>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                    </div>
                    <br>
                    
                    <table style="width:100%;">
                        <tr>
                            <td align="center">
                                <button type="submit" class="btn btn-primary" id="btn_guardar" name="Guardar" onclick="guardar();"><fmt:message key="idiomas_btn_guardar"/></button>
                            </td>
                            <td align="center">
                                <button type="submit" class="btn btn-warning" id="btn_modificar" name="Modificar" onclick="actualizar();"><fmt:message key="idiomas_btn_modificar"/></button>
                            </td>
                            <td align="center">
                                <button type="submit" class="btn btn-danger" id="btn_eliminar" name="Eliminar" onclick="eliminar();"><fmt:message key="idiomas_btn_eliminar"/></button>
                            </td>
                        </tr>
                    </table>
                </div>

                <br>
                <div class="panel-group" style="width:30%; margin:0 auto;">
                    <div class="panel panel-default">
                        <a data-toggle="collapse" href="#collapse1" style="text-decoration: none;">
                            <div class="panel-heading">
                                <h4 class="panel-title" style="text-align:center;color:black;">
                                    <b><fmt:message key="idiomas_lbl_tabla_registro_tema"/></b>
                                </h4>
                            </div>
                        </a>
                        <div id="collapse1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <table id="tabla_registro" class="table table-striped table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <td align="center"><b>ID</b></td>
                                            <td align="center"><b><fmt:message key="idiomas_thead_tabla_nombre"/></b></td>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="name" items="${consulta.rows}">
                                            <tr>
                                                <td align="center"><c:out value="${name.id_idioma}"/></td>
                                                <td align="center"><c:out value="${name.nombre_idioma}"/></td>
                                                
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>   
            </div>                        
        </form>

        <!--codigo del footer-->
        <%@include file="Estructura_plantilla/footer.jsp"%>

    </body>
</html>