<%-- 
    Document   : Mantenimiento_Material
    Created on : 05-08-2018, 10:58:40 AM
    Author     : Edwin Escamilla
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
<sql:query dataSource="jdbc/mysql" var="consulta1">
    select * from autor
</sql:query>
<sql:query dataSource="jdbc/mysql" var="consulta2">
    select * from clasificacion
</sql:query>
<sql:query dataSource="jdbc/mysql" var="consulta3">
    select * from temas
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

                
                b_nuevo.disabled = false;
                b_modificar.disabled = true;
                b_eliminar.disabled = true;

                
            }

            function editar() {

                var b_nuevo = document.getElementById('btn_guardar');
                var b_modificar = document.getElementById('btn_modificar');
                var b_eliminar = document.getElementById('btn_eliminar');

                var select = document.getElementById('select_idiomas');
                b_nuevo.disabled = true;
                b_modificar.disabled = false;
                b_eliminar.disabled = false;

                select.style.display = 'block';
                document.datos.txt_descripcion.value = "";
            }
            
            function changeFunc() 
            {
                var selectBox = document.getElementById("selectBox");
                var p_issn = document.getElementById('p_issn');
                var p_isbn = document.getElementById('p_isbn');
                var f_tesis = document.getElementById('f_tesis');
                var p_coddisco = document.getElementById('p_coddisco');
                var p_tipodisco = document.getElementById('p_tipodisco');
                var z = 1, x= 2, c = 3, v = 4, b = 0;
                if("Book" == selectBox.value || "Libro" == selectBox.value)
                {
                    p_issn.style.display = 'none';
                    p_isbn.style.display = 'block';
                    f_tesis.style.display = 'none';
                    p_coddisco.style.display = 'none';
                    p_tipodisco.style.display = 'none';
                    $("#txt_isbn").attr("required");
                    $("#txt_issn").removeAttr("required");
                    $("#txt_coddisco").removeAttr("required");
                    $("#tesis_codigo").removeAttr("required");
                }
                if("Revista" == selectBox.value || "Magazine" == selectBox.value)
                {
                    p_issn.style.display = 'block';
                    p_isbn.style.display = 'none';
                    f_tesis.style.display = 'none';
                    p_coddisco.style.display = 'none';
                    p_tipodisco.style.display = 'none';
                    $("#txt_isbn").removeAttr("required");
                    $("#txt_issn").attr("required");
                    $("#txt_coddisco").removeAttr("required");
                    $("#tesis_codigo").removeAttr("required");
                   
                }
                if("Tesis" == selectBox.value || "Thesis" == selectBox.value)
                {
                    p_issn.style.display = 'none';
                    p_isbn.style.display = 'none';
                    f_tesis.style.display = 'block';
                    p_coddisco.style.display = 'none';
                    p_tipodisco.style.display = 'none';
                    $("#txt_isbn").removeAttr("required");
                    $("#txt_issn").removeAttr("required");
                    $("#txt_coddisco").removeAttr("required");
                    $("#tesis_codigo").attr("required");
                }
                if("Disco" == selectBox.value || "Disk" == selectBox.value)
                {
                    p_issn.style.display = 'none';
                    p_isbn.style.display = 'none';
                    f_tesis.style.display = 'none';
                    p_coddisco.style.display = 'block';
                    p_tipodisco.style.display = 'block';
                    $("#txt_isbn").removeAttr("required");
                    $("#txt_issn").removeAttr("required");
                    $("#txt_coddisco").attr("required");
                    $("#tesis_codigo").removeAttr("required");

                }
                if(b == selectBox.value)
                {
                    p_issn.style.display = 'none';
                    p_isbn.style.display = 'none';
                    f_tesis.style.display = 'none';
                    p_coddisco.style.display = 'none';
                    p_tipodisco.style.display = 'none';
                    $("#selectBox").attr("required");
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
                
                $("#CodigoL").attr("required");
                $("#selectBox").attr("required");
                
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
        <form name="datos" role="form" action="ingresaLibro.jsp" method="POST" accept-charset="ISO-8859-1">
            <div style="width:95%; height:auto; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px; z-index:10;">
            
                <a href="menu_empleado.jsp" class="btn btn-info" role="button" id="regresar">
                    <img alt="Regresar" width="40px" height="30px" onmouseout="this.src='imagenes/flecha-de-deshacer.png';" onmouseover="this.src='imagenes/flecha_azul.png';" src="imagenes/flecha-de-deshacer.png"/>
                </a>
                
                <div style="width:32%; margin:0 auto;">
                    <h1 style="text-align:center;"><b><fmt:message key="material_lbl_material"/></b></h1>
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
                            <div class="col-md-10" style=" position: relative; left: 30px;">
                                <div class="form-group">
                                   <label for="telefono"><fmt:message key="idioma_lbl_tema"/></label>
                                        <div class="input-group">
                                            <select class="form-control selector" name="cmb_idiomas" id="select_idiomas" onchange="seleccionar();" required="">
                                                <option value="0"><fmt:message key="idiomas_select_idiomas"/></option>
                                                    <c:forEach var="name" items="${consulta.rows}">
                                                        <option value="${name.id_idioma}"><c:out value="${name.nombre_idioma}"/></option>
                                                    </c:forEach>
                                            </select>
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-list">                                
                                                </span>
                                            </span>
                                        </div>
                                </div>
                                <div class="form-group">
                                   <label for="telefono"><fmt:message key="autor_lbl_autor"/></label>
                                        <div class="input-group">
                                            <select class="form-control selector" name="cmb_autor" id="select_idiomas" onchange="seleccionar();" required="">
                                                <option value="0"><fmt:message key="in_autor"/></option>
                                                    <c:forEach var="name" items="${consulta1.rows}">
                                                        <option value="${name.idAutor}"><c:out value="${name.Nombre_Autor}"/></option>
                                                    </c:forEach>
                                            </select>
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-list">                                
                                                </span>
                                            </span>
                                        </div>
                                </div>
                                <div class="form-group">
                                   <label for="telefono"><fmt:message key="clasi_lbl_clasi"/></label>
                                        <div class="input-group">
                                            <select class="form-control selector" name="cmb_clasi" id="select_idiomas" onchange="seleccionar();" required="">
                                                <option value="0"><fmt:message key="in_clasi"/></option>
                                                    <c:forEach var="name" items="${consulta2.rows}">
                                                        <option value="${name.id_clasificacion}"><c:out value="${name.nombre}"/></option>
                                                    </c:forEach>
                                            </select>
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-list">                                
                                                </span>
                                            </span>
                                        </div>
                                </div>
                                <div class="form-group">
                                   <label for="telefono"><fmt:message key="tema_lbl_tema"/></label>
                                        <div class="input-group">
                                            <select class="form-control selector" name="cmb_tema" id="select_idiomas" onchange="seleccionar();" required="">
                                                <option value="0"><fmt:message key="in_tema"/></option>
                                                    <c:forEach var="name" items="${consulta3.rows}">
                                                        <option value="${name.idTemas}"><c:out value="${name.Nombre_Tema}"/></option>
                                                    </c:forEach>
                                            </select>
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-list">                                
                                                </span>
                                            </span>
                                        </div>
                                </div>
                            </div>
                       </fieldset>
                        <br>
                        <table style="width:100%;">
                        <tr>
                            <td align="center">
                                <button type="submit" class="btn btn-primary" id="btn_guardar" name="Guardar" onclick="guardar();"><fmt:message key="idiomas_btn_guardar"/></button>
                            </td>
                        </tr>
                    </table>
                    </div>
                </div>
            </div>
        </form>
        <!--codigo del footer-->
        <%@include file="Estructura_plantilla/footer.jsp"%>
    </body>
</html>
