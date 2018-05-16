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
    
<!-- scriptlet para mantener la pagina con sesión-->
<%@include file="Sesion/scriptlet_sesion_empleado.jsp"%>
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
            function agregar() {
                
                $("#CodigoL").attr("required");
                $("#selectBox").removeAttr("required");
                
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
        <form name="datos" role="form" action="Consultas_Material.jsp" method="POST" accept-charset="ISO-8859-1">
            <div style="width:95%; height:1100px; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px; z-index:10;">
            
                <a href="Menu_Material.jsp" class="btn btn-info" role="button" id="regresar">
                    <img alt="Regresar" width="40px" height="30px" onmouseout="this.src='imagenes/flecha-de-deshacer.png';" onmouseover="this.src='imagenes/flecha_azul.png';" src="imagenes/flecha-de-deshacer.png"/>
                </a>
                
                <div style="width:32%; margin:0 auto;">
                    <h1 style="text-align:center;"><b><fmt:message key="material_lbl_material"/></b></h1>
                    <hr style="border:2px solid grey;">
                    
                    <%-- Area de mensaje o avisos --%>
                    <c:if test="${param.resultado!=null}">
                        <c:choose>
                            <c:when test='${param.resultado=="error_guardar"}'>
                                <div class="alert alert-danger alert-dismissible" style="width: 100%;margin: 0 auto; float: none;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <fmt:message key="msj_guardar_fail" var="mensaje"/>
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
                                   <label for="nombre"><fmt:message key="material_lbl_codigo"/></label>
                                        <div class="input-group">
                                            <input type="number" class="form-control" name="CodigoL" id="CodigoL" placeholder="<fmt:message key="in_codigo"/>" onKeyPress="return soloNumeros(event)" required>
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-book">
                                                </span>
                                            </span>
                                        </div>
                                </div>
                                <div class="form-group">
                                   <label for="telefono"><fmt:message key="material_lbl_titulo"/></label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="titulo" name="Titulo" placeholder="<fmt:message key="in_titulo"/>">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-tag">                                
                                                </span>
                                            </span>
                                        </div>
                                </div>
                                <div class="form-group">
                                   <label for="apellido"><fmt:message key="material_lbl_edicion"/></label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="edicion" name="Edicion" placeholder="<fmt:message key="in_edicion"/>">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-bookmark">   
                                                </span>      
                                            </span>
                                        </div>
                                </div>
                                <div class="form-group">
                                   <label for="telefono"><fmt:message key="material_select_material"/></label>
                                        <div class="input-group">
                                            <select class="form-control selector" name="selectBox" id="selectBox" onchange="changeFunc();" required>
                                                <option value="0"><fmt:message key="material_select_material"/></option>
                                                    <option value="<fmt:message key="material_lbl_libro"/>"><fmt:message key="material_lbl_libro"/></option>
                                                    <option value="<fmt:message key="material_lbl_revista"/>"><fmt:message key="material_lbl_revista"/></option>
                                                    <option value="<fmt:message key="material_lbl_tesis"/>"><fmt:message key="material_lbl_tesis"/></option>
                                                    <option value="<fmt:message key="material_lbl_disco"/>"><fmt:message key="material_lbl_disco"/></option>
                                            </select>
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-list">                                
                                                </span>
                                            </span>
                                        </div>
                                </div>
                                <div class="form-group">
                                   <label for="telefono"><fmt:message key="material_lbl_descripcion"/></label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="descripcion" name="Descripcion" placeholder="<fmt:message key="in_descripcion"/>" >
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-pencil">                                
                                                </span>
                                            </span>
                                        </div>
                                </div>
                                <div class="form-group">
                                   <label for="telefono"><fmt:message key="material_lbl_precio"/></label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="precio" name="Precio" placeholder="<fmt:message key="in_precio"/>">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-usd">                                
                                                </span>
                                            </span>
                                        </div>
                                </div>
                                <div class="form-group">
                                  <label for="telefono"><fmt:message key="material_lbl_fecha"/></label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="fecha" name="Fecha" placeholder="<fmt:message key="in_fecha"/>" pattern="^((1?[0-9]{2}|2?[0-9]{2})\d{2})[\/-](0?[1-9]|1[012])[\/-](0?[1-9]|[12][0-9]|3[01])$" title="yyyy/mm/dd">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar">                                
                                                </span>
                                            </span>
                                        </div>
                                </div>
                                <div class="form-group">
                                   <label for="telefono"><fmt:message key="material_lbl_volumen"/></label>
                                      <div class="input-group">
                                          <input type="text" class="form-control" id="volumen" name="Volumen" placeholder="<fmt:message key="in_volumen"/>">
                                          <span class="input-group-addon">
                                              <span class="glyphicon glyphicon-sound-5-1">                                
                                              </span>
                                          </span>
                                      </div>
                                </div>
                                <div class="form-group">
                                   <label for="telefono"><fmt:message key="material_lbl_notas"/></label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="notas" name="Notas" placeholder="<fmt:message key="in_notas"/>">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-font">                                
                                            </span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                       </fieldset>
                       <fieldset style=" position: absolute; top: 290px; width: 30%; left: 900px; display: block;" id="f_estado">
                            <h5 style="text-align:center;"><b><fmt:message key="material_lbl_estado"/></b></h5>
                            <hr style="border:2px solid grey;">
                            <div class="col-md-10" style=" position: relative; left: 30px;">
                               <div class="form-group">
                                   <label for="telefono"><fmt:message key="material_lbl_estado"/></label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" readonly="readonly" id="editorial" value="<fmt:message key="material_lbl_estado_a"/>">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-ok-circle">                                
                                                </span>
                                            </span>
                                        </div>
                                </div>       
                        </fieldset>
                       <fieldset style="position: absolute; left: 50px; top: 290px; display: block; width: 30%;">
                            <h3 style="text-align:center;"><b>Editorial</b></h3>
                            <hr style="border:2px solid grey;">
                            <div class="col-md-10" style=" position: relative; left: 30px;">
                                <div class="form-group">
                                    <label for="telefono"><fmt:message key="material_lbl_editorial"/></label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="editorial" name="editorial" placeholder="<fmt:message key="in_editorial"/>">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-font">                                
                                                </span>
                                            </span>
                                        </div>
                                </div>
                                <div class="form-group">
                                    <label for="telefono"><fmt:message key="material_lbl_ubicacion"/></label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="editorial_place" name="editorial_place" placeholder="<fmt:message key="in_ubicacion"/>">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-globe">                                
                                                </span>
                                            </span>
                                        </div>
                                </div>
                                <div class="form-group">
                                    <label for="telefono"><fmt:message key="material_lbl_anio"/></label>
                                        <div class="input-group">
                                            <input type="number" class="form-control" id="editorial_anio" name="editorial_anio" placeholder="<fmt:message key="in_anio"/>">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar">                                
                                                </span>
                                            </span>
                                        </div>
                                </div> 
                            </div>
                            </div>
                       </fieldset>
                        <fieldset style="position: absolute; left: 50px; top: 627px; display: block; width: 30%;">
                            <h5 style="text-align:center;"><b><fmt:message key="material_lbl_Odatos"/></b></h5>
                            <hr style="border:2px solid grey;">
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
                                                        <option value="${name.Nombre_Autor}"><c:out value="${name.Nombre_Autor}"/></option>
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
                                                        <option value="${name.Nombre_Tema}"><c:out value="${name.Nombre_Tema}"/></option>
                                                    </c:forEach>
                                            </select>
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-list">                                
                                                </span>
                                            </span>
                                        </div>
                                </div> 
                              <table style="width:100%;">
                        <tr>
                            <td align="center">
                                <button type="submit" class="btn btn-warning" id="btn_clasificacion" name="btn_clasi" onclick="agregar();document.forms.datos.action='Mantenimiento_Clasificacion.jsp'; document.forms.datos.submit()" style=" width: 105px;"><fmt:message key="clasi_lbl_clasi"/></button>
                            </td>
                            <td align="center">
                                <button type="submit" class="btn btn-warning" id="btn_autor" name="btn_autor" onclick="agregar();document.forms.datos.action='Mantenimiento_Autor.jsp'; document.forms.datos.submit()" style=" width: 105px;"><fmt:message key="autor_lbl_autor"/></button>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <br>
                                <button type="submit" class="btn btn-warning" id="btn_idioma" name="btn_idioma" onclick="agregar();document.forms.datos.action='Mantenimiento_Idiomas.jsp'; document.forms.datos.submit()" style=" width: 105px;"><fmt:message key="idioma_lbl_tema"/></button>
                            </td>
                            <td align="center">
                                <br>
                                <button type="submit" class="btn btn-warning" id="btn_tema" name="btn_tema" onclick="agregar();document.forms.datos.action='Mantenimiento_Temas.jsp'; document.forms.datos.submit()" style=" width: 105px;"><fmt:message key="tema_lbl_tema"/></button>
                            </td>
                        </tr>
                    </table>
                            </div>
                        </fieldset>
                       <fieldset style=" position: absolute; top: 490px; width: 30%; left: 900px; display: none;" id="f_tesis">

                                        <h3 style="text-align:center;"><b><fmt:message key="material_lbl_datatesis"/></b></h3>
                                    <hr style="border:2px solid grey;">
                                <div class="form-group">
                                    <label for="telefono"><fmt:message key="material_lbl_codtesis"/></label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="tesis_codigo" name="tesis_codigo" placeholder="<fmt:message key="in_codtesis"/>" required>
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-barcode">                                
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                        <div class="form-group">
                                    <label for="telefono"><fmt:message key="material_lbl_tipoinves"/></label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="tesis_tipo" name="tesis_tipo" placeholder="<fmt:message key="in_tipoinves"/>">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-tasks">                                
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                        <div class="form-group">
                                    <label for="telefono"><fmt:message key="material_lbl_lugar"/></label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="tesis_lugar" name="tesis_lugar" placeholder="<fmt:message key="in_lugar"/>">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-globe">                                
                                            </span>
                                        </span>
                                    </div>
                                </div>   
                                        <div class="form-group">
                                    <label for="telefono"><fmt:message key="material_lbl_grado"/></label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="tesis_grado" name="tesis_grado" placeholder="<fmt:message key="in_grado"/>">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-education">                                
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                        <div class="form-group">
                                    <label for="telefono"><fmt:message key="material_lbl_institucion"/></label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="tesis_institucion" name="tesis_institucion" placeholder="<fmt:message key="in_institucion"/>">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-home">                                
                                            </span>
                                        </span>
                                    </div>
                                </div>         
                        </fieldset>
                        <fieldset>
                        <div class="form-group" id="p_isbn" style="display: none">
                            <label id="lbl_isbn"><fmt:message key="material_lbl_isbn"/>:</label>
                                <div class="input-group" id="div_isbn" >
                                    <input type="text" class="form-control"  placeholder="<fmt:message key="in_isbn"/>" id="txt_isbn" name="txt_isbn" pattern="^(?:ISBN(?:-1[03])?:? )?(?=[0-9X]{10}$|(?=(?:[0-9]+[- ]){3})[- 0-9X]{13}$|97[89][0-9]{10}$|(?=(?:[0-9]+[- ]){4})[- 0-9]{17}$)(?:97[89][- ]?)?[0-9]{1,5}[- ]?[0-9]+[- ]?[0-9]+[- ]?[0-9X]$" required>
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                </div>
                        </div>
                        <div class="form-group" id="p_issn" style="display: none">
                            <label id="lbl_issn" ><fmt:message key="material_lbl_issn"/>:</label>
                                <div class="input-group" id="div_issn" >
                                    <input type="text" class="form-control"  placeholder="<fmt:message key="in_issn"/>" id="txt_issn" name="txt_issn" pattern="^([-0-9X]){9}$" required>
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                </div>
                        </div> 
                        <div class="form-group" id="p_coddisco" style="display: none">
                            <label id="lbl_coddisco"><fmt:message key="material_lbl_coddisco"/>:</label>
                                <div class="input-group" id="div_coddisco" >
                                    <input type="number" class="form-control"  placeholder="<fmt:message key="in_coddisco"/>" id="txt_coddisco" name="txt_coddisco" required>
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                </div>
                        </div>
                                    <div class="form-group" id="p_tipodisco" style="display: none">
                            <label id="lbl_tipodisco" ><fmt:message key="material_lbl_tipodisco"/>:</label>
                                <div class="input-group" id="div_tipodisco" >
                                    <input type="text" class="form-control"  placeholder="<fmt:message key="in_tipodisco"/>" id="tipodisco" name="tipodisco">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-tasks"></i></span>
                                </div>
                        </div>
                        </fieldset>
                        <br>
                        <table style="width:100%;">
                        <tr>
                            <td align="center">
                                <button type="submit" class="btn btn-primary" id="btn_guardar" name="Guardar" onclick="guardar();" style=" width: 300px;"><fmt:message key="idiomas_btn_guardar"/></button>
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
