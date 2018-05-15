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
    select Codigo_Material,Titulo,Tipo_Material,Estado from material
</sql:query>
<sql:query dataSource="jdbc/mysql" var="consultaA">
    select Codigo_Material,Titulo,Tipo_Material,Estado from material WHERE Estado='Activo' OR Estado = 'Active'
</sql:query>
<sql:query dataSource="jdbc/mysql" var="consultaI">
    select Codigo_Material,Titulo,Tipo_Material,Estado from material WHERE Estado='Inactivo' OR Estado = 'Inactive'
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
                //var elements = document.getElementsByName('filtra');
                //elements[0].checked = true;
                //nuevo();
                document.querySelector("#buscar").onkeyup = function(){
                $TableFilter("#tabla_registro", this.value);
                }
    
                $TableFilter = function(id, value){
                    var rows = document.querySelectorAll(id + ' tbody tr');

                    for(var i = 0; i < rows.length; i++){
                        var showRow = false;

                        var row = rows[i];
                        row.style.display = 'none';

                        for(var x = 0; x < row.childElementCount; x++){
                            if(row.children[x].textContent.toLowerCase().indexOf(value.toLowerCase().trim()) > -1){
                                showRow = true;
                                break;
                            }
                        }
                        if(showRow){
                            row.style.display = null;
                        }
                    }
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
                
                $("#CodigoL").removeAttr("required");
            }

            function actualizar() {
                $("#CodigoL").attr("required"); 
            }

            function eliminar() {
                $("#CodigoL").attr("required");
            }
            
        </script>
    </head>
    <body onload="iniciar();">
        <!--codigo del header-->
        <%@include file="Estructura_plantilla/header.jsp"%>
 
        <!--contenedor-->
        <form name="datos" role="form" action="Mantenimiento_Material.jsp" method="POST" accept-charset="ISO-8859-1">
            <div style="width:95%; height:auto; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px; z-index:10;">
            
                <a href="menu_empleado.jsp" class="btn btn-info" role="button" id="regresar">
                    <img alt="Regresar" width="40px" height="30px" onmouseout="this.src='imagenes/flecha-de-deshacer.png';" onmouseover="this.src='imagenes/flecha_azul.png';" src="imagenes/flecha-de-deshacer.png"/>
                </a>
                
                <div style="width:52%; margin:0 auto;">
                    <h1 style="text-align:center;"><b><fmt:message key="material_lbl_material"/></b></h1>
                    <hr style="border:2px solid grey;">
                    
                    <%-- Area de mensaje o avisos --%>
                    <c:if test="${param.resultado!=null}">
                        <c:choose>
                            <c:when test='${param.resultado=="guardado"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="msj_guardar_ok" var="mensaje"/>${param.valorCodigo}
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="modificado"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="msj_modificar_ok" var="mensaje"/>${param.valorCodigo}
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                            <c:when test='${param.resultado=="eliminado"}'>
                                <div class="alert alert-success alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="msj_eliminar_ok" var="mensaje"/>${param.valorCodigo}
                                    <span><c:out value="${mensaje}"/></span>
                                </div>
                            </c:when>
                        </c:choose>
                    </c:if> 
                    <br>
                    <div>
                        <fieldset>
                            <div class="col-md-10" style=" position: relative; left: 55px;">
                                <div class="form-group">
                                   <label for="nombre"><fmt:message key="material_lbl_buscar"/></label>
                                        <div class="input-group">
                                            <input type="number" class="form-control" name="CodigoL" id="CodigoL" placeholder="<fmt:message key="in_buscar"/>" onKeyPress="return soloNumeros(event)" required>
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-search">
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
                                <button type="submit" class="btn btn-primary" id="btn_nuevo" name="Nuevo" onclick="guardar();" style=" width: 150px;"><fmt:message key="material_lbl_nuevo"/></button>
                            </td>
                            <td align="center">
                                <button type="submit" class="btn btn-warning" id="btn_buscar" name="Buscar" onclick="actualizar(); this.form.action='SUD_Material.jsp'" style=" width: 150px;"><fmt:message key="material_lbl_buscar"/></button>
                            </td>
                        </tr>
                    </table>
                    </div>
                    <br>
                    <div class="panel-group" style="width:100%; margin:0 auto;" id="div_todo">
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
                                                <td align="center"><b><fmt:message key="material_lbl_codigo"/></b></td>
                                                <td align="center"><b><fmt:message key="material_lbl_titulo"/></b></td>
                                                <td align="center"><b><fmt:message key="material_select_material"/></b></td>
                                                <td align="center"><b><fmt:message key="material_lbl_estado"/></b></td>
                                            </tr>
                                            <tr>
                                                <input id="buscar" type="text" class="form-control" placeholder="<fmt:message key="material_input_busca"/>"/>
                                            </tr>
                                        </thead>
                                        <tbody>
                                                <c:forEach var="name" items="${consulta.rows}">
                                                    <tr>
                                                        <td align="center"><c:out value="${name.Codigo_Material}"/></td>
                                                        <td align="center"><c:out value="${name.Titulo}"/></td>
                                                        <td align="center"><c:out value="${name.Tipo_Material}"/></td>
                                                        <td align="center"><c:out value="${name.Estado}"/></td>
                                                    </tr>
                                                </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
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
