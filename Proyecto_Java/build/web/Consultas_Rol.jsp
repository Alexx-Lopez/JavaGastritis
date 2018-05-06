<%-- 
    Document   : Consultas_Rol
    Created on : 05-may-2018, 23:49:16
    Author     : Alexx
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="c_rol" scope="request" class="Beans.RolBeans">
    <jsp:setProperty name="c_rol" property="*"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:choose>
        <c:when test="${param.Guardar != null}">
            <sql:query dataSource="jdbc/mysql" var="consulta">
                select * from rol where Nombre='${c_rol.txt_rol}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <jsp:forward page="Mantenimiento_Rol.jsp">
                    <jsp:param name="resultado" value="Registro_existente"/>
                </jsp:forward> 
            </c:if>
            <c:if test="${consulta.rowCount == 0}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Insert into rol(Nombre,Descripcion,Prestamos) values(?,?,?)
                    <sql:param value="${c_rol.txt_rol}"/>
                    <sql:param value="${c_rol.txt_descripcion}"/>
                    <sql:param value="${c_rol.txt_prestamos}"/>
                </sql:update>

                <jsp:forward page="Mantenimiento_Rol.jsp">
                    <jsp:param name="resultado" value="datos_ingresados"/>
                </jsp:forward>   
            </c:if>
        </c:when>
        <c:when test="${param.Modificar!= null}">
            <sql:query dataSource="jdbc/mysql" var="consulta">
                select * from rol where Nombre='${c_rol.cmb_rol}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Update rol set Descripcion=?, Prestamos=?  where idRol=${consulta.rows[0].idRol}
                    <sql:param value="${c_rol.txt_descripcion}"/>
                    <sql:param value="${c_rol.txt_prestamos}"/>
                </sql:update>
                <jsp:forward page="Mantenimiento_Rol.jsp">
                    <jsp:param name="resultado" value="datos_actualizados"/>
                </jsp:forward>  
            </c:if>
        </c:when>
        <c:when test="${param.Eliminar!=null}">
            <sql:query dataSource="jdbc/mysql" var="consulta">
                select * from rol where Nombre='${c_rol.cmb_rol}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Delete from rol where idRol=${consulta.rows[0].idRol}
                </sql:update>
                <jsp:forward page="Mantenimiento_Rol.jsp">
                    <jsp:param name="resultado" value="datos_eliminados"/>
                </jsp:forward>  
            </c:if>
        </c:when>
    </c:choose>
    </body>
</html>
