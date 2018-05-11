<%--- 
    Document   : Consultas_Clasificacion
    Created on : 09-may-2018, 12:18:15
    Author     : karin
---%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="c_clasificacion" scope="request" class="Beans.ClasificacionBeans">
    <jsp:setProperty name="c_clasificacion" property="*"/>
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
                select * from clasificacion where nombre='${c_clasificacion.txt_clasificacion}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <jsp:forward page="Mantenimiento_Clasificacion.jsp">
                    <jsp:param name="resultado" value="Registro_existente"/>
                </jsp:forward> 
            </c:if>
            <c:if test="${consulta.rowCount == 0}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Insert into clasificacion(nombre) values(?)
                    <sql:param value="${c_clasificacion.txt_clasificacion}"/>
                </sql:update>

                <jsp:forward page="Mantenimiento_Clasificacion.jsp">
                    <jsp:param name="resultado" value="datos_ingresados"/>
                </jsp:forward>   

            </c:if>
        </c:when>
        <c:when test="${param.Modificar!= null}">
            <sql:query dataSource="jdbc/mysql" var="consulta">
                select * from clasificacion where nombre='${c_clasificacion.cmb_clasificacion}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Update clasificacion set nombre=? where id_clasificacion=${consulta.rows[0].id_clasificacion}
                    <sql:param value="${c_clasificacion.txt_clasificacion}"/>
                </sql:update>
                <jsp:forward page="Mantenimiento_Clasificacion.jsp">
                    <jsp:param name="resultado" value="datos_actualizados"/>
                </jsp:forward>  
            </c:if>
        </c:when>
        <c:when test="${param.Eliminar!=null}">
            <sql:query dataSource="jdbc/mysql" var="consulta">
                select * from clasificacion where nombre='${c_clasificacion.cmb_clasificacion}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Delete from clasificacion where id_clasificacion=${consulta.rows[0].id_clasificacion}
                </sql:update>
                <jsp:forward page="Mantenimiento_Clasificacion.jsp">
                    <jsp:param name="resultado" value="datos_eliminados"/>
                </jsp:forward>  
            </c:if>
        </c:when>
    </c:choose>
</body>
</html>
