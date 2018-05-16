<%-- 
    Document   : Mantenimiento_consulta
    Created on : 11-may-2018, 20:00:17
    Author     : darv_
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Herramientas.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="c_bus" scope="request" class="Beans.consultabeans"></jsp:useBean>

<!--Seleccion de idioma del usuario-->
<c:if test="${param.locale!=null}">
    <fmt:setLocale value="${param.locale}" scope="session"/>
</c:if>

<!--Consulta SQL para alimentar tabla de libro seleccionado-->
<c:if test="${param.codigoo!=null}">
<sql:query dataSource="jdbc/mysql" var="consu2">
   select Item,EstadoMaterial,Ubicacion from copia where Codigo_Material = '${param.codigoo}'
</sql:query>
</c:if>
<!--Consulta SQL para alimentar el select-->

<c:if test="${param.tituloo!=null}">
<sql:query dataSource="jdbc/mysql" var="consu">
    select Codigo_Material,Titulo,Edicion,Tipo_Material,Volumen from Material where titulo  LIKE  '%${param.tituloo}%'
</sql:query>
</c:if>
    
<!-- scriptlet para mantener la pagina con sesión-->
<%@include file="Sesion/scriptlet_sesion_usuario.jsp"%>
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
            
            function mostrarSeleccion(id)
            {
               /* var cmb_cargo = document.getElementById("select_rol");
                if (cmb_cargo.value != "") {*/
                  
                    
                    document.datos.txt_codigo_material.value = id;
                    eliminar_required();
            }  
 
             function nuevo() {

                var b_nuevo = document.getElementById('btn_guardar');
                var b_modificar = document.getElementById('btn_modificar');
                var b_eliminar = document.getElementById('btn_eliminar');
                var txt_cargo = document.getElementById('txt_rol');
                var select = document.getElementById('select_rol');
                b_nuevo.disabled = false;
                b_modificar.disabled = true;
                b_eliminar.disabled = true;
                txt_cargo.style.display = 'block';
                select.style.display = 'none';
                document.datos.txt_descripcion.value = "";
                document.datos.txt_prestamos.value="";
            }
            function buscar() {
                $("#txt_titulo").attr("required");
                $("#txt_autor").attr("required");
            }
            
            function eliminar_required(){
                $("#txt_titulo").removeAttr("required");
                $("#txt_autor").removeAttr("required");
            }
           
            
           
        </script>
   
    
    </head>
    
    <body onload="iniciar();">
 
        <!--codigo del header-->
        <%@include file="Estructura_plantilla/header.jsp"%>

        <!--contenedor-->
        <form name="datos" role="form" action="Consultas_buscar.jsp" method="POST" accept-charset="ISO-8859-1">
            <div style="width:95%; height:auto; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px; z-index:10;">

             <a href="menu_usuario.jsp" class="btn btn-info" role="button" id="regresar">
              <img alt="Regresar" width="40px" height="30px" onmouseout="this.src = 'imagenes/flecha-de-deshacer.png';" onmouseover="this.src = 'imagenes/flecha_azul.png';" src="imagenes/flecha-de-deshacer.png"/>
               </a>

                <div style="width:90%; margin:0 auto;">
                    
                    <h1 style="text-align:center;"><b><fmt:message key="consulta_lbl_tema"/></b></h1>
                    <hr style="border:2px solid grey;">
                    <br>

                    
                    
                    <%-- Area de mensaje o avisos --%>
                   
                           
                   
                     <%-- Area de mensaje o avisos --%>
                     
                     
                     
                     
                     
                      <%-- cree una tabla para 2 campos y una tabla --%>
               <table style="width:100%;">
                        <td align="center">
                    <b><fmt:message key="consulta_lbl_titulo"/>:</b>
                    <div class="input-group" style="width:75%" >
                        <input type="text" min="1" max="20" step="1" class="form-control" id="txt_titulo" name="txt_titulo" value="${c_bus.txt_titulo}" required="">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                    </div>
                    <br>
                   
                    
                    <b><fmt:message key="consulta_lbl_autor"/>:</b>
                    <div class="input-group" style="width:75%" >
                        <input type="text" min="1" max="20" step="1" class="form-control" id="txt_autor" name="txt_autor" value="${c_bus.txt_autor}" required="">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                    </div>
                    <br>
                     </td>
                     
                     <input type="text" name="txt_codigo_material" value='<c:out value="${param.id}"/>' style="visibility:hidden">
                                           
                   <td align="center">
                                       
                    <table id="tabla_registro" class="table table-striped table-hover table-bordered">
                                    <thead>
                                        <tr>
                                             <td align="center"><b><fmt:message key="consulta_thead_tabla_Codigo_Material"/></b></td>
                                            <td align="center"><b><fmt:message key="consulta_thead_tabla_Titulo"/></b></td>
                                            <td align="center"><b><fmt:message key="consulta_thead_tabla_Edicion"/></b></td>
                                            <td align="center"><b><fmt:message key="consulta_thead_tabla_Tipo_Material"/></b></td>
                                            <td align="center"><b><fmt:message key="consulta_thead_tabla_Volumen"/></b></td>
                                              <td align="center"><b><fmt:message key="consulta_thead_tabla_seleccion"/></b></td>
                                         
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="name" items="${consu.rows}">
                                            <tr>
                                                
                                                <td align="center"><c:out value="${name.Codigo_Material}"/></td>
                                                <td align="center"><c:out value="${name.Titulo}"/></td>
                                                <td align="center"><c:out value="${name.Edicion}"/></td>
                                                <td align="center"><c:out value="${name.Tipo_Material}"/></td>
                                                <td align="center"><c:out value="${name.Volumen}"/></td>
                                                <td align="center"><button type="submit" id="btn_sel"  name="buscar2" onclick="mostrarSeleccion(${name.Codigo_Material});">Seleccionar</button></td>
                                                
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                        </table>
                      </td>
                    </table>
                                        
                      <%-- Aqui termina --%>                   
                                        
                      
                       <%-- una tabla para los botones --%>
                    <table style="width:100%;">
                        <tr>
                            <td align="center">
                                <button type="submit" class="btn btn-primary" id="btn_guardar" name="buscar" onclick="buscar();"><fmt:message key="consulta_btn_buscar"/></button>
                            </td>
                            <td align="center">
                                <button type="submit" class="btn btn-danger" id="btn_eliminar" name="borrar" onclick="borrar();"><fmt:message key="consulta_btn_borrar"/></button>
                            </td>
                        </tr>
                    </table>
       
                </div>
                            
                          <%-- botones --%>         
                            

                <br>
                <div class="panel-group" style="width:80%; margin:0 auto;">
                    <div class="panel panel-default">
                        <a data-toggle="collapse" href="#collapse1" style="text-decoration: none;">
                            <div class="panel-heading">
                                <h4 class="panel-title" style="text-align:center;color:black;">
                                    <b><fmt:message key="consulta_lbl_tabla_titulo_tema"/></b>
                                </h4>
                            </div>
                        </a>
                        <div id="collapse1" class="panel-collapse collapse">
                            <div class="panel-body">
                                  <table id="tabla_registro" class="table table-striped table-hover table-bordered">
                                    <thead>
                                        <tr>

                                             <td align="center"><b><fmt:message key="consulta_thead_tabla_Item"/></b></td>
                                            <td align="center"><b><fmt:message key="consulta_thead_tabla_Estado_Material"/></b></td>
                                            <td align="center"><b><fmt:message key="consulta_thead_tabla_Ubicacion"/></b></td>
                                            
                                         
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="name2" items="${consu2.rows}">
                                            <tr>
                                                
                                                <td align="center"><c:out value="${name2.Item}"/></td>
                                                <td align="center"><c:out value="${name2.EstadoMaterial}"/></td>
                                                <td align="center"><c:out value="${name2.Ubicacion}"/></td>
                                             
                                               
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
