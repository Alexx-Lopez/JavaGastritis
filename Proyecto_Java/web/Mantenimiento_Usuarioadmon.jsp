<%-- 
    Document   : Mantenimiento_Usuarioadmon
    Created on : 13-may-2018, 4:50:35
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

<jsp:useBean id="c_usuarioadmon" scope="request" class="Beans.UsuarioadmonBeans">
</jsp:useBean>

<!--Consulta SQL para alimentar la tabla-->
<sql:query dataSource="jdbc/mysql" var="consulta">
    select ua.idUsuarios,ua.idEmpleado, ua.Usuario, ua.Activo, r.Nombre from usuarioadmon ua INNER JOIN  usuarioadmonrol uar on ua.idUsuarios=uar.idUsuarios 
                    INNER JOIN  rol r on uar.idRol=r.idRol
</sql:query>

<!--Consulta SQL para alimentar el select-->
<sql:query dataSource="jdbc/mysql" var="consulta_rol">
    select * from rol
</sql:query>

<!-- scriptlet para mantener la pagina con sesión-->
<%@include file="Sesion/scriptlet_sesion_empleado.jsp"%>
    
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
                set_elements();
            }

            function nuevo() {

                var b_nuevo = document.getElementById('btn_guardar');
                var b_modificar = document.getElementById('btn_modificar');
                var b_eliminar = document.getElementById('btn_eliminar');
                var div_id = document.getElementById('div_id');
                var div_id_busqueda = document.getElementById('div_id_busqueda');

                b_nuevo.disabled = false;
                b_modificar.disabled = true;
                b_eliminar.disabled = true;
                div_id.style.display = 'table';
                div_id_busqueda.style.display = 'none';
            }

            function editar() {

                var b_nuevo = document.getElementById('btn_guardar');
                var b_modificar = document.getElementById('btn_modificar');
                var b_eliminar = document.getElementById('btn_eliminar');
                var div_id = document.getElementById('div_id');
                var div_id_busqueda = document.getElementById('div_id_busqueda');

                b_nuevo.disabled = true;
                b_modificar.disabled = false;
                b_eliminar.disabled = false;
                div_id.style.display = 'none';
                div_id_busqueda.style.display = 'block';
                //document.datos.txt_descripcion.value = "";
            }

            function limpiar() {
                document.datos.txt_id_busqueda.value = '';
                document.datos.txt_nombre.value = '';
                document.datos.txt_apellido.value = '';
                document.datos.txt_correo.value = '';
                document.datos.txt_telefono.value = '';
                document.datos.txt_dui.value = '';
                document.datos.txt_nit.value = '';
                document.datos.select_cargo.value = '';


                var select_cargo = document.getElementById("select_cargo");
                select_cargo.selectedIndex = 0


                var select_turno = document.getElementById("select_turno");
                select_turno.selectedIndex = 0;


                seleccionar_turno();


                document.datos.txt_salario.value = '';

                var elements = document.getElementsByName('r_estado');
                if (${c_empleado.r_estado=="1"}) {
                    elements[0].checked = false;
                } else
                if (${c_empleado.r_estado=="0"}) {
                    elements[1].checked = false;
                }

                document.datos.txt_clave.value = '';
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
                $("#txt_id_busqueda").removeAttr("required");
                $("#txt_id").attr("required");
                $("#txt_nombre").attr("required");
                $("#select_rol").attr("required");
                $("#r_estado1").attr("required");
                $("#r_estado2").attr("required");
                $("#txt_clave").attr("required");
            }

            function actualizar() {
                $("#txt_id_busqueda").attr("required");
                $("#txt_id").removeAttr("required");
                $("#txt_nombre").attr("required");
                $("#select_rol").attr("required");
                $("#r_estado1").attr("required");
                $("#r_estado2").attr("required");
                $("#txt_clave").attr("required");
            }

            function eliminar() {
                $("#txt_id_busqueda").attr("required");
                $("#txt_id").removeAttr("required");
                $("#txt_nombre").removeAttr("required");
                $("#select_rol").removeAttr("required");
                $("#r_estado1").removeAttr("required");
                $("#r_estado2").removeAttr("required");
                $("#txt_clave").removeAttr("required");
            }

            function buscar() {
                $("#txt_id_busqueda").attr("required");
                $("#txt_id").removeAttr("required");
                $("#txt_nombre").removeAttr("required");
                $("#select_rol").removeAttr("required");
                $("#r_estado1").removeAttr("required");
                $("#r_estado2").removeAttr("required");
                $("#txt_clave").removeAttr("required");
            }

            //se recupera los valores seteados de la busqueda y se setean los elementos correspodientes
            function set_elements() {
            <c:if test="${c_usuarioadmon.txt_id_busqueda!=null && c_usuarioadmon.txt_id_busqueda!=''}">

                document.datos.txt_id_busqueda.value = '${c_usuarioadmon.txt_id_busqueda}';
                document.datos.txt_nombre.value = '${c_usuarioadmon.txt_nombre}';
                document.datos.select_rol.value = '${c_usuarioadmon.cmb_rol}';


                var select_rol = document.getElementById("select_rol");
                for (var i = 1; i < select_rol.length; i++) {
                    if (select_rol.options[i].text == '${c_usuarioadmon.cmb_rol}')
                    {
                        // seleccionamos el valor que coincide
                        select_rol.selectedIndex = i;
                    }
                }

                var elements = document.getElementsByName('r_estado');
                if (${c_usuarioadmon.r_estado=="1"}) {
                    elements[0].checked = true;
                } else
                if (${c_usuarioadmon.r_estado=="0"}) {
                    elements[1].checked = true;
                }

                document.datos.txt_clave.value = '${c_usuarioadmon.txt_clave}';

                var elements = document.getElementsByName('control');
                elements[1].checked = true;
                editar();

            </c:if>
            }
        </script>
    </head>
    <body onload="iniciar();">
        <!--codigo del header-->
        <%@include file="Estructura_plantilla/header.jsp"%>

        <!--contenedor-->
        <form name="datos" role="form" action="Consultas_Usuarioadmon.jsp" method="POST" accept-charset="ISO-8859-1">
            <div style="width:95%; height:auto; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px; z-index:10;">

                <a href="menu_empleado.jsp" class="btn btn-info" role="button" id="regresar">
                    <img alt="Regresar" width="40px" height="30px" onmouseout="this.src = 'imagenes/flecha-de-deshacer.png';" onmouseover="this.src = 'imagenes/flecha_azul.png';" src="imagenes/flecha-de-deshacer.png"/>
                </a>

                <div style="width:32%; margin:0 auto;">
                    <h1 style="text-align:center;"><b><fmt:message key="usuariosadmon_lbl_tema"/></b></h1>
                    <hr style="border:2px solid grey;">

                    <%-- Area de mensaje o avisos --%>
                    <c:if test="${param.resultado!=null}">
                        <c:choose>
                            <c:when test='${param.resultado=="Registro_existente"}'>
                                <div class="alert alert-danger alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="usuariosadmon_mensaje_registro_repetido" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="datos_ingresados"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="usuariosadmon_mensaje_ingreso" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="datos_actualizados"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="usuariosadmon_mensaje_actualizacion" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="datos_eliminados"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="usuariosadmon_mensaje_eliminacion" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="registro_encontrado"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="usuariosadmon_mensaje_encontrado" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="registro_no_encontrado"}'>
                                <div class="alert alert-danger alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="usuariosadmon_mensaje_no_encontrado" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="Registro_error"}'>
                                <div class="alert alert-danger alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="usuariosadmon_mensaje_error" var="mensaje"/>
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                        </c:choose>
                    </c:if> 

                    <br>
                    <div>
                        <fieldset>
                            <legend style="font-size: smaller;"><b><fmt:message key="usuariosadmon_lbl_control"/></b></legend>
                            <table style="width: 100%;">
                                <tr>
                                    <td align="center">
                                        <input type="radio" name="control" value="" onclick="nuevo();"> <fmt:message key="usuariosadmon_rbtn_nuevo"/>
                                    </td>

                                    <td align="center">
                                        <input type="radio" name="control" value="" onclick="editar();"> <fmt:message key="usuariosadmon_rbtn_editar"/>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>

                    </div>
                    <br>
                    <br>
                    <b>ID:</b>
                    <div class="input-group" id="div_id">
                        <input type="text" class="form-control" id="txt_id" name="txt_id" value="" required="" pattern="[0-9]{9}">
                        <span class="input-group-addon">
                            <i class="material-icons" style="font-size:18px">
                                assignment_ind
                            </i>
                        </span>
                    </div>

                    <div class="input-group" id="div_id_busqueda">
                        <input type="text" class="form-control" id="txt_id_busqueda"  style="display:block; width:90%;background-color: #19b7676b;" name="txt_id_busqueda" value="" required="" pattern="[0-9]{9}">

                        <button type="submit" id="btn_buscar" name="Buscar" class="input-group-addon" style="width: 40px;height: 34px;" onclick="buscar();">
                            <span>
                                <i class="glyphicon glyphicon-search"></i>
                            </span>
                        </button>
                    </div>
                    <br>


                    <b><fmt:message key="usuariosadmon_lbl_nombre"/>:</b>
                    <div class="input-group">
                        <input type="text" class="form-control" id="txt_nombre" name="txt_nombre" value="" required="">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    </div>
                    <br>

                    <b><fmt:message key="usuariosadmon_lbl_rol"/>:</b>
                    <div class="input-group">
                        <select class="form-control selector" name="cmb_rol" id="select_rol" required="">
                            <option value=""><fmt:message key="usuariosadmon_select_rol"/></option>

                            <c:forEach var="name" items="${consulta_rol.rows}">
                                <option><c:out value="${name.Nombre}"/></option>
                            </c:forEach>

                        </select>
                        <span class="input-group-addon"><i class="fa fa-group" style="font-size:18px"></i></span>
                    </div>
                    <br>
                    <b><fmt:message key="usuariosadmon_lbl_estado"/>:</b>
                    <table style="width:100%; background-color: white; border-radius: 5px;">
                        <tr>
                            <td align="center">
                                <div class="radio">
                                    <label><input type="radio" id="r_estado1" name="r_estado" required="" value="1"><fmt:message key="usuariosadmon_rbtn_activo"/></label>
                                </div>
                            </td>
                            <td align="center">
                                <div class="radio">
                                    <label><input type="radio" id="r_estado2" name="r_estado" required="" value="0"><fmt:message key="usuariosadmon_rbtn_inactivo"/></label>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <br>
                    <b><fmt:message key="usuariosadmon_lbl_clave"/>:</b>
                    <div class="input-group">
                        <input type="password" class="form-control" id="txt_clave" name="txt_clave" value="" required="">
                        <span class="input-group-addon"><i class="fa fa-lock" style="font-size:18px"></i></span>
                    </div>
                    <br>


                    <table style="width:100%;">
                        <tr>
                            <td align="center">
                                <button type="submit" class="btn btn-primary" id="btn_guardar" name="Guardar" onclick="guardar();"><fmt:message key="usuariosadmon_btn_guardar"/></button>
                            </td>
                            <td align="center">
                                <button type="submit" class="btn btn-warning" id="btn_modificar" name="Modificar" onclick="actualizar();"><fmt:message key="usuariosadmon_btn_modificar"/></button>
                            </td>
                            <td align="center">
                                <button type="submit" class="btn btn-danger" id="btn_eliminar" name="Eliminar" onclick="eliminar();"><fmt:message key="usuariosadmon_btn_eliminar"/></button>
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
                                    <b><fmt:message key="usuariosadmon_lbl_tabla_registro_tema"/></b>
                                </h4>
                            </div>
                        </a>
                        <div id="collapse1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <table id="tabla_registro" class="table table-striped table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <td align="center"><b><fmt:message key="usuariosadmon_thead_tabla_id_usuario"/></b></td>
                                            <td align="center"><b><fmt:message key="usuariosadmon_thead_tabla_id_empleado"/></b></td>
                                            <td align="center"><b><fmt:message key="usuariosadmon_thead_tabla_nombre"/></b></td>
                                            <td align="center"><b><fmt:message key="usuariosadmon_thead_tabla_estado"/></b></td>
                                            <td align="center"><b><fmt:message key="usuariosadmon_thead_tabla_rol"/></b></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="name" items="${consulta.rows}">
                                            <tr>
                                                <td align="center"><c:out value="${name.idUsuarios}"/></td>
                                                <td align="center"><c:out value="${name.idEmpleado}"/></td>
                                                <td align="center"><c:out value="${name.Usuario}"/></td>
                                                <td align="center"><c:out value="${name.Activo}"/></td> 
                                                <td align="center"><c:out value="${name.Nombre}"/></td>
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
