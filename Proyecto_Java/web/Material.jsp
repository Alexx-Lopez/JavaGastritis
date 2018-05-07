<%-- 
    Document   : Material
    Created on : 04-24-2018, 06:23:32 PM
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
    select * from cargo
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
        <!-- css y js a ocupar-->
        <%@include file="Estructura_plantilla/head.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Material</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    
    <body>
        <!--codigo del header-->
        <%@include file="Estructura_plantilla/header.jsp"%>
        
        <!--contenedor-->
        <div style="width:90%; height:650px; background-color:#f3e8e8ab; margin:0 auto; margin-top:180px; padding:10px">
            
            <br>
            <h1 style="position: relative; top: -10px; left: 800px;">Idiomas</h1>
            
            <div class="container">
                <div>
                    <br>
                    <table class="table table-striped table-bordered table-hover" style="position: relative; top: -10px; left: 274px; border-collapse: separate; border-spacing: 1px; margin: 0 auto; background-color: #1ABC9C; width: 24%">
                    <thead>
                        <tr>
                            <th><center>Codigo</center></th>
                            <th><center>Nombre</center></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        st = conexion.prepareStatement("select id_idioma, nombre_idioma from idiomas");
                        rs = st.executeQuery();
                        while (rs.next()) 
                        {
                        %>
                        <tr>
                            <td><center><%=rs.getString("id_idioma")%></center></td>
                            <td><center><%=rs.getString("nombre_idioma")%></center></td>
                        </tr>
                        <%
                            }
                            conexion.close();
                        %>
                    </tbody>
                    </table>
                </div>
                <br>
                <div class="row col-md-8" style="position: relative; top: 10px; left: 620px; width: 80%">
                    <form role="form" action="ingresar.jsp" method="POST">
                        <div class="col-md-7">
                            <div class="form-group" >
                                &nbsp &nbsp
                                <b><label for="nombre"> Nombre: </label></b>
                                <div align="center" class="input-group">
                                    <input  type="text" class="form-control" id="nombre" name="nombre"
                                   placeholder="Ingresa el nombre">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-pencil">                                
                                        </span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

             <br>
                <table class="form-group col-md-7" style="position: relative; top: 24px; left: 616px; width: 38%">
                        <tr>
                            <td align="center">
                                <button type="button" class="btn btn-primary">Ingresar</button>
                            </td>
                            <td align="center">
                                <button type="button" class="btn btn-warning">Modificar</button>
                            </td>
                            <td align="center">
                                <button type="button" class="btn btn-danger">Eliminar</button>
                            </td>
                        </tr>
                </table> 
            </div>
        </div>

        <!--codigo del footer-->
        <%@include file="Estructura_plantilla/footer.jsp"%>
    </body>
</html>
