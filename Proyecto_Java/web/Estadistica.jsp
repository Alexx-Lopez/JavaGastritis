<%-- 
    Document   : Estadistica
    Created on : 15-may-2018, 4:08:47
    Author     : Alexx
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!-- consulta sql para extraer la cantidad de material -->
<sql:query dataSource="jdbc/mysql" var="consulta_n_material">
select COUNT(Codigo_Material) as 'n_material' from material
</sql:query>

<!-- consulta sql para extraer la cantidad de copias -->
<sql:query dataSource="jdbc/mysql" var="consulta_n_copia">
select COUNT(Item) as 'n_copia' from copia
</sql:query>

<!-- consulta sql para extraer los usuarios activos -->
<sql:query dataSource="jdbc/mysql" var="consulta_n_usuarios_a">
select COUNT(idUsuarios) as 'n_usuarios' from usuarioadmon where Activo=1; 
</sql:query>

<!-- consulta sql para extraer los usuarios inactivos -->
<sql:query dataSource="jdbc/mysql" var="consulta_n_usuarios_i">
select COUNT(idUsuarios) as 'n_usuarios' from usuarioadmon where Activo=0; 
</sql:query>

<!-- consulta sql para extraer los prestamos actuales -->
<sql:query dataSource="jdbc/mysql" var="consulta_n_prestamos">
select COUNT(idRegistro) as 'prestamos' from registro where Estado_registro=1;
</sql:query>

<!-- consulta sql para extraer las reservas actuales -->
<sql:query dataSource="jdbc/mysql" var="consulta_n_reserva">
select COUNT(idReserva) as 'reservas' from reserva;
</sql:query>

<!-- consulta sql para extraer los materiales más prestados -->
<sql:query dataSource="jdbc/mysql" var="consulta_n_mas_prestados">
    select Tipo_Material, Titulo, COUNT(Titulo) as total FROM registro 
    INNER JOIN copia on registro.Item=copia.Item
    INNER JOIN material on material.Codigo_Material=copia.Codigo_Material
    group by  Titulo order by total desc;
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

            input:focus{
                z-index: 0 !important;
            }

            .columna_icono{
                border: none;
                background-color: transparent;
            }

            .fila_tabla{
                height: 50px;
            }
        </style>
    </head>
    <body>
        <!--codigo del header-->
        <%@include file="Estructura_plantilla/header.jsp"%>

        <!--contenedor-->
        <form name="datos" role="form" action="Consultas_Empleado.jsp" method="POST" accept-charset="ISO-8859-1">
            <div style="width:95%; height:auto; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px; z-index:10;">

                <a href="menu_empleado.jsp" class="btn btn-info" role="button" id="regresar">
                    <img alt="Regresar" width="40px" height="30px" onmouseout="this.src = 'imagenes/flecha-de-deshacer.png';" onmouseover="this.src = 'imagenes/flecha_azul.png';" src="imagenes/flecha-de-deshacer.png"/>
                </a>

                <div style="width:32%; margin:0 auto;">
                    <h1 style="text-align:center;"><b>Estadística</b></h1>
                    <hr style="border:2px solid grey;">
                    <br>

                    <h4 style="text-align:center;"><span><b>Datos más importantes</b></span></h4>
                    <br>
                    <table style="border-collapse: separate; border-spacing: 10px 5px; margin: 0 auto;">
                        <tr class="fila_tabla">
                            <td>
                                <span class="input-group-addon columna_icono"><i class="glyphicon glyphicon-book"></i></span>
                            </td>
                            <td align="">
                                <b>N° Materiales:</b>
                            </td>
                            <td>
                                <b><c:out value="${consulta_n_material.rows[0].n_material}"/></b>
                            </td>
                        </tr>
                        <tr class="fila_tabla">
                            <td>
                                <span class="input-group-addon columna_icono"><i class="glyphicon glyphicon-duplicate"></i></span>
                            </td>
                            <td align="">
                                <b>N° Copias:</b>
                            </td>
                            <td>
                                <b> <c:out value="${consulta_n_copia.rows[0].n_copia}"/></b>
                            </td>
                        </tr>
                        <tr class="fila_tabla">
                            <td>
                                <span class="input-group-addon columna_icono"><i class="glyphicon glyphicon-ok-sign"></i></span>
                            </td>
                            <td align="">
                                <b>Usuarios activos:</b>
                            </td>
                            <td>
                                <b> <c:out value="${consulta_n_usuarios_a.rows[0].n_usuarios}"/></b>
                            </td>
                        </tr>
                        <tr class="fila_tabla">
                            <td>
                                <span class="input-group-addon columna_icono"><i class="glyphicon glyphicon-remove-sign"></i></span>
                            </td>
                            <td align="" >
                                <b>Usuarios inactivos:</b>
                            </td>
                            <td>
                                <b> <c:out value="${consulta_n_usuarios_i.rows[0].n_usuarios}"/></b>
                            </td>
                        </tr>
                        <tr class="fila_tabla">
                            <td>
                                <span class="input-group-addon columna_icono"><i class="glyphicon glyphicon-tasks"></i></span>
                            </td>
                            <td align="" >
                                <b>Prestamos actuales:</b>
                            </td>
                            <td>
                                <b><c:out value="${consulta_n_prestamos.rows[0].prestamos}"/></b>
                            </td>
                        </tr>
                        <tr class="fila_tabla">
                            <td>
                                <span class="input-group-addon columna_icono"><i class="glyphicon glyphicon-floppy-disk"></i></span>
                            </td>
                            <td align="" >
                                <b>Reservas:</b>
                            </td>
                            <td>
                                <b><c:out value="${consulta_n_reserva.rows[0].reservas}"/></b>
                            </td>
                        </tr>
                    </table>
                    <br>
                    <br>
                </div>
                            <div class="panel panel-default" style="width:80%; margin:0 auto;">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse_1" style="text-decoration: none;">
                        <div class="panel-heading">
                            <h4 class="panel-title" style="text-align:center;color:black;">
                                <b>Los 5 materiales más prestados</b>
                            </h4>
                        </div>
                        </a>
                        <div id="collapse_1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <table id="tabla_registro" class="table table-striped table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <td align="center"><b>Tipo Material</b></td>
                                            <td align="center"><b>Material</b></td>
                                            <td align="center"><b>Total</b></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="name" items="${consulta_n_mas_prestados.rows}" begin="0" end="4" step="1">
                                            <tr>
                                                <td align="center"><c:out value="${name.Tipo_Material}"/></td>
                                                <td align="center"><c:out value="${name.Titulo}"/></td>
                                                <td align="center"><c:out value="${name.total}"/></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                <br>
                 
            </div>                        
        </form>

        <!--codigo del footer-->
        <%@include file="Estructura_plantilla/footer.jsp"%>
    </body>
</html>
