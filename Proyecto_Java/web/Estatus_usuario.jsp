<%-- 
    Document   : Estatus_usuario
    Created on : 13-may-2018, 23:11:46
    Author     : Alexx
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- scriptlet para mantener la pagina con sesión-->
<%@include file="Sesion/scriptlet_sesion_usuario.jsp"%>

<jsp:scriptlet>
    //se extrae el id del empleado que ha iniciado sesión  y luego se realiza un set en el 
    //beans
    String id_usu = "";

    //se crea una variable de sesion para almacenar el id de la persona que ingreso
    HttpSession sesion_emp = request.getSession();
    id_usu=(String)sesion_emp.getAttribute("usuario");
</jsp:scriptlet>

<!-- consulta sql para llenar la información personal -->
<sql:query dataSource="jdbc/mysql" var="consulta_inf">
    select ua.idUsuarios, ua.Usuario, ua.Activo, r.Nombre from usuarioadmon ua INNER JOIN  usuarioadmonrol uar on ua.idUsuarios=uar.idUsuarios 
                              INNER JOIN  rol r on uar.idRol=r.idRol where ua.idUsuarios=<%=id_usu%>
</sql:query>
                             
<!-- consulta sql para mostrar la multa total -->
<sql:query dataSource="jdbc/mysql" var="consulta_multa">
    select SUM(Multa) as 'Multa' from registro where idUsuarios=<%=id_usu%>
</sql:query>
               
<!-- consulta sql para llenar la tabla prestamos-->
<sql:query dataSource="jdbc/mysql" var="consulta_pre">
    select c.Item, m.Titulo, c.EstadoMaterial, c.Ubicacion, r.Multa, r.F_Prestamo, r.F_Devuelto from usuarioadmon u
    INNER JOIN registro r on u.idUsuarios=r.idUsuarios
    INNER JOIN copia c on r.Item=c.Item
    INNER JOIN material m on c.Codigo_Material=m.Codigo_Material where u.idUsuarios=<%=id_usu%> and r.Estado_registro=1;
</sql:query>

<!-- consulta sql para llenar la tabla de reservas-->
<sql:query dataSource="jdbc/mysql" var="consulta_re">
    select c.Item, m.Titulo, c.EstadoMaterial, c.Ubicacion, r.F_Inicio, r.F_Final from usuarioadmon u 
    INNER JOIN reserva r on u.idUsuarios=r.idUsuarios 
    INNER JOIN copia c on r.Item=c.Item 
    INNER JOIN material m on c.Codigo_Material=m.Codigo_Material where u.idUsuarios=<%=id_usu%>;
</sql:query>
    
<!-- consulta sql para llenar la tabla historial de prestamos-->
<sql:query dataSource="jdbc/mysql" var="consulta_his_pre">
    select c.Item, m.Titulo, r.F_Prestamo, r.F_Devuelto from usuarioadmon u
    INNER JOIN registro r on u.idUsuarios=r.idUsuarios
    INNER JOIN copia c on r.Item=c.Item
    INNER JOIN material m on c.Codigo_Material=m.Codigo_Material where u.idUsuarios=<%=id_usu%> and r.Estado_registro=0;
</sql:query>
    

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

                <a href="menu_admin.jsp" class="btn btn-info" role="button" id="regresar">
                    <img alt="Regresar" width="40px" height="30px" onmouseout="this.src = 'imagenes/flecha-de-deshacer.png';" onmouseover="this.src = 'imagenes/flecha_azul.png';" src="imagenes/flecha-de-deshacer.png"/>
                </a>

                <div style="width:32%; margin:0 auto;">
                    <h1 style="text-align:center;"><b>Estatus de Usuario</b></h1>
                    <hr style="border:2px solid grey;">
                    <br>

                    <h4 style="text-align:center;"><span><b>Información Personal</b></span></h4>
                    <br>
                    <table style="border-collapse: separate; border-spacing: 10px 5px;">
                        <tr class="fila_tabla">
                            <td>
                                <span class="input-group-addon columna_icono"><i class="material-icons" style="font-size:18px">assignment_ind</i></span>
                            </td>
                            <td align="">
                                <b>ID:</b>
                            </td>
                            <td>
                                <b><c:out value="${consulta_inf.rows[0].idUsuarios}"/></b>
                            </td>
                        </tr>
                        <tr class="fila_tabla">
                            <td>
                                <span class="input-group-addon columna_icono"><i class="glyphicon glyphicon-user"></i></span>
                            </td>
                            <td align="">
                                <b>Usuario:</b>
                            </td>
                            <td>
                                <b> <c:out value="${consulta_inf.rows[0].Usuario}"/></b>
                            </td>
                        </tr>
                        <tr class="fila_tabla">
                            <td>
                                <span class="input-group-addon columna_icono"><i class="glyphicon glyphicon-ok-sign"></i></span>
                            </td>
                            <td align="">
                                <b>Estado:</b>
                            </td>
                            <td>
                                <c:if test="${consulta_inf.rows[0].Activo==1}">
                                    <b>Activo</b>
                                </c:if>
                                <c:if test="${consulta_inf.rows[0].Activo==0}">
                                    <b>Inactivo</b>
                                </c:if>
                            </td>
                        </tr>
                        <tr class="fila_tabla">
                            <td>
                                <span class="input-group-addon columna_icono"><i class="fa fa-group" style="font-size:18px"></i></span>
                            </td>
                            <td align="" >
                                <b>Rol:</b>
                            </td>
                            <td>
                                <b><c:out value="${consulta_inf.rows[0].Nombre}"/></b>
                            </td>
                        </tr>
                        <tr class="fila_tabla">
                            <td>
                                <span class="input-group-addon columna_icono"><i class="glyphicon glyphicon-usd"></i></span>
                            </td>
                            <td align="" >
                                <b>Multa:</b>
                            </td>
                            <td>
                                <b><c:out value="${consulta_multa.rows[0].Multa}"/></b>
                            </td>
                        </tr>
                    </table>

                    <br>
                    <br>
                </div>

                <div class="panel-group" id="accordion" style="width:100%; margin:0 auto;">
                    <div class="panel panel-default">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse_1" style="text-decoration: none;">
                        <div class="panel-heading">
                            <h4 class="panel-title" style="text-align:center;color:black;">
                                <b>Préstamos</b>
                            </h4>
                        </div>
                        </a>
                        <div id="collapse_1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <table id="tabla_registro" class="table table-striped table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <td align="center"><b>Item</b></td>
                                            <td align="center"><b>Material</b></td>
                                            <td align="center"><b>Estado</b></td>
                                            <td align="center"><b>Ubicación</b></td>
                                            <td align="center"><b>Multa</b></td>
                                            <td align="center"><b>Prestado</b></td>
                                            <td align="center"><b>Devuelto</b></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="name" items="${consulta_pre.rows}">
                                            <tr>
                                                <td align="center"><c:out value="${name.Item}"/></td>
                                                <td align="center"><c:out value="${name.Titulo}"/></td>
                                                <td align="center"><c:out value="${name.EstadoMaterial}"/></td>
                                                <td align="center"><c:out value="${name.Ubicacion}"/></td>
                                                <td align="center"><c:out value="${name.Multa}"/></td>
                                                <td align="center"><c:out value="${name.F_Prestamo}"/></td> 
                                                <td align="center"><c:out value="${name.F_Devuelto}"/></td> 
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse_2" style="text-decoration: none;">
                        <div class="panel-heading">
                            <h4 class="panel-title" style="text-align:center;color:black;">
                                <b>Materiales Reservados</b>
                            </h4>
                        </div>
                        </a>
                        <div id="collapse_2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <table id="tabla_registro" class="table table-striped table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <td align="center"><b>Item</b></td>
                                            <td align="center"><b>Material</b></td>
                                            <td align="center"><b>Estado</b></td>
                                            <td align="center"><b>Ubicación</b></td>
                                            <td align="center"><b>Fecha de Reserva</b></td>
                                            <td align="center"><b>Fecha de Expiración</b></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="name" items="${consulta_re.rows}">
                                            <tr>
                                                <td align="center"><c:out value="${name.Item}"/></td>
                                                <td align="center"><c:out value="${name.Titulo}"/></td>
                                                <td align="center"><c:out value="${name.EstadoMaterial}"/></td>
                                                <td align="center"><c:out value="${name.Ubicacion}"/></td>
                                                <td align="center"><c:out value="${name.F_Inicio}"/></td>
                                                <td align="center"><c:out value="${name.F_Final}"/></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse_3" style="text-decoration: none;">
                        <div class="panel-heading">
                            <h4 class="panel-title" style="text-align:center;color:black;">
                                <b>Historial de Préstamos</b>
                            </h4>
                        </div>
                        </a>
                        <div id="collapse_3" class="panel-collapse collapse">
                            <div class="panel-body">
                                <table id="tabla_registro" class="table table-striped table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <td align="center"><b>Item</b></td>
                                            <td align="center"><b>Material</b></td>
                                            <td align="center"><b>Prestado</b></td>
                                            <td align="center"><b>Devuelto</b></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="name" items="${consulta_his_pre.rows}">
                                            <tr>
                                                <td align="center"><c:out value="${name.Item}"/></td>
                                                <td align="center"><c:out value="${name.Titulo}"/></td>
                                                <td align="center"><c:out value="${name.F_Prestamo}"/></td>
                                                <td align="center"><c:out value="${name.F_Devuelto}"/></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
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
