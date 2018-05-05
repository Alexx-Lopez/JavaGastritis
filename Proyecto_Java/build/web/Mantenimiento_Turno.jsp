<%-- 
    Document   : Mantenimiento_Turno
    Created on : 22-abr-2018, 11:53:43
    Author     : Alexx
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
    select * from turno
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
                var txt_turno = document.getElementById('txt_turno');
                var select = document.getElementById('select_turno');

                b_nuevo.disabled = false;
                b_modificar.disabled = true;
                b_eliminar.disabled = true;

                txt_turno.style.display = 'block';
                select.style.display = 'none';

                document.datos.txt_hora_inicio.value = "";
                document.datos.txt_hora_fin.value = "";

            }

            function editar() {

                var b_nuevo = document.getElementById('btn_guardar');
                var b_modificar = document.getElementById('btn_modificar');
                var b_eliminar = document.getElementById('btn_eliminar');
                var txt_turno = document.getElementById('txt_turno');
                var select = document.getElementById('select_turno');

                b_nuevo.disabled = true;
                b_modificar.disabled = false;
                b_eliminar.disabled = false;

                txt_turno.style.display = 'none';
                select.style.display = 'block';

                document.datos.txt_hora_inicio.value = "";
                document.datos.txt_hora_fin.value = "";

            }

            function seleccionar() {
                var cmb_turno = document.getElementById("select_turno");
                if (cmb_turno.value != "") {
            <c:forEach var="name" items="${consulta.rows}">
                    var nombre = '<c:out value="${name.Nombre}"/>';
                    if (nombre == cmb_turno.value) {
                        //colocar valores en los imput 
                        document.datos.txt_hora_inicio.value = '<c:out value="${name.Horario_Inicio}"/>';
                        document.datos.txt_hora_fin.value = '<c:out value="${name.Horario_Final}"/>';
                    }
            </c:forEach>
                } else
                {
                    document.datos.txt_hora_inicio.value = "";
                    document.datos.txt_hora_fin.value = "";
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
                $("#select_turno").removeAttr("required");

                $("#txt_turno").attr("required");
                $("#txt_hora_inicio").attr("required");
                $("#txt_hora_fin").attr("required");
            }

            function actualizar() {
                $("#txt_turno").removeAttr("required");

                $("#select_turno").attr("required");
                $("#txt_hora_inicio").attr("required");
                $("#txt_hora_fin").attr("required");
            }

            function eliminar() {
                $("#select_turno").attr("required");

                $("#txt_turno").removeAttr("required");
                $("#txt_hora_inicio").removeAttr("required");
                $("#txt_hora_fin").removeAttr("required");
                //alert("hola");
            }
        </script>
    </head>

    <body onload="iniciar();">
        <!--codigo del header-->
        <%@include file="Estructura_plantilla/header.jsp"%>

        <!--contenedor-->
        <form name="datos" role="form" action="Consultas_Turno.jsp" method="POST" accept-charset="ISO-8859-1">
            <div style="width:95%; height:auto; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px">
                
                <a href="menu_admin.jsp" class="btn btn-info" role="button" id="regresar">
                    <img alt="Regresar" width="40px" height="30px" onmouseout="this.src='imagenes/flecha-de-deshacer.png';" onmouseover="this.src='imagenes/flecha_azul.png';" src="imagenes/flecha-de-deshacer.png"/>
                </a>
                
                <div style="width:32%; margin:0 auto;">
                    <h1 style="text-align:center;"><b><fmt:message key="turno_lbl_tema"/></b></h1>
                    <hr style="border:2px solid grey;">

                    <%-- Area de mensaje o avisos --%>
                    <c:if test="${param.resultado!=null}">
                        <c:choose>
                            <c:when test='${param.resultado=="Registro_existente"}'>
                                <div class="alert alert-danger alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="turno_mensaje_registro_repetido" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="datos_ingresados"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="turno_mensaje_ingreso" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="datos_actualizados"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="turno_mensaje_actualizacion" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="datos_eliminados"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="turno_mensaje_eliminacion" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                        </c:choose>
                    </c:if> 
                    <br>
                    <div>
                        <fieldset>
                            <legend style="font-size: smaller;"><b><fmt:message key="turno_lbl_control"/></b></legend>
                            <table style="width: 100%;">
                                <tr>
                                    <td align="center">
                                        <input type="radio" name="control" value="" onclick="nuevo();"> <fmt:message key="turno_rbtn_nuevo"/>
                                    </td>

                                    <td align="center">
                                        <input type="radio" name="control" value="" onclick="editar();"> <fmt:message key="turno_rbtn_editar"/>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>

                    </div>
                    <br>
                    <b><fmt:message key="turno_lbl_turno"/>:</b>
                    <div class="input-group">
                        <input type="text" class="form-control"  placeholder="<fmt:message key="turno_placeholder_turno"/>" id="txt_turno" name="txt_turno" required="">
                        <select class="form-control selector" name="cmb_turno" id="select_turno" onchange="seleccionar();" required="">
                            <option value=""><fmt:message key="turno_select_turno"/></option>

                            <c:forEach var="name" items="${consulta.rows}">
                                <option><c:out value="${name.Nombre}"/></option>
                            </c:forEach>

                        </select>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                    </div>
                    <br>


                    <b><fmt:message key="turno_lbl_horario_inicio"/>:</b>
                    <div class="input-group">
                        <input type="time" class="form-control" id="txt_hora_inicio" name="txt_hora_inicio" value="" required="">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                    </div>
                    <br>

                    <b><fmt:message key="turno_lbl_horario_fin"/>:</b>
                    <div class="input-group">
                        <input type="time" class="form-control" id="txt_hora_fin" name="txt_hora_fin" value="" required="">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                    </div>
                    <br>
                    <table style="width:100%;">
                        <tr>
                            <td align="center">
                                <button type="submit" class="btn btn-primary" id="btn_guardar" name="Guardar" onclick="guardar();"><fmt:message key="turno_btn_guardar"/></button>
                            </td>
                            <td align="center">
                                <button type="submit" class="btn btn-warning" id="btn_modificar" name="Modificar" onclick="actualizar();"><fmt:message key="turno_btn_modificar"/></button>
                            </td>
                            <td align="center">
                                <button type="submit" class="btn btn-danger" id="btn_eliminar" name="Eliminar" onclick="eliminar();"><fmt:message key="turno_btn_eliminar"/></button>
                            </td>
                        </tr>
                    </table>
                </div>

                <br>
                <div class="panel-group" style="width:80%; margin:0 auto;">
                    <div class="panel panel-default">
                        <a data-toggle="collapse" href="#collapse1" style="text-decoration: none;">
                            <div class="panel-heading">
                                <h4 class="panel-title" style="text-align:center;color:black;">
                                    <b><fmt:message key="turno_lbl_tabla_registro_tema"/></b>
                                </h4>
                            </div>
                        </a>
                        <div id="collapse1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <table id="tabla_registro" class="table table-striped table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <td align="center"><b>ID</b></td>
                                            <td align="center"><b><fmt:message key="turno_thead_tabla_Turno"/></b></td>
                                            <td align="center"><b><fmt:message key="turno_thead_tabla_hora_inicio"/></b></td>
                                            <td align="center"><b><fmt:message key="turno_thead_tabla_hora_final"/></b></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="name" items="${consulta.rows}">
                                            <tr>
                                                <td align="center"><c:out value="${name.idTurno}"/></td>
                                                <td align="center"><c:out value="${name.Nombre}"/></td>
                                                <td align="center"><c:out value="${name.Horario_Inicio}"/></td>
                                                <td align="center"><c:out value="${name.Horario_Final}"/></td>
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
