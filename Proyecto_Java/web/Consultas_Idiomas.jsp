<%-- 
    Document   : Consultas_Idiomas
    Created on : 05-may-2018, 18:18:15
    Author     : karin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="c_idiomas" scope="request" class="Beans.IdiomasBeans">
    <jsp:setProperty name="c_idiomas" property="*"/>
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
                select * from idiomas where nombre_idioma='${c_idiomas.txt_idiomas}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <jsp:forward page="Mantenimiento_Idiomas.jsp">
                    <jsp:param name="resultado" value="Registro_existente"/>
                </jsp:forward> 
            </c:if>
            <c:if test="${consulta.rowCount == 0}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Insert into idiomas(id_idioma, nombre_idioma) values(?,?)
                    <sql:param value="${c_idiomas.txt_id_idioma}"/>
                    <sql:param value="${c_idiomas.txt_idiomas}"/>
                </sql:update>

                <jsp:forward page="Mantenimiento_Idiomas.jsp">
                    <jsp:param name="resultado" value="datos_ingresados"/>
                </jsp:forward>   

            </c:if>
        </c:when>
        <c:when test="${param.Modificar!= null}">
            <sql:query dataSource="jdbc/mysql" var="consulta">
                select * from idiomas where nombre_idioma='${c_idiomas.cmb_idiomas}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Update idiomas set nombre_idioma=? where id_idioma=${consulta.rows[0].id_idioma}
                    <sql:param value="${c_idiomas.txt_idiomas}"/>
                </sql:update>
                <jsp:forward page="Mantenimiento_Idiomas.jsp">
                    <jsp:param name="resultado" value="datos_actualizados"/>
                </jsp:forward>  
            </c:if>
        </c:when>
        <c:when test="${param.Eliminar!=null}">
            <sql:query dataSource="jdbc/mysql" var="consulta">
                select * from idiomas where nombre_idioma='${c_idiomas.cmb_idiomas}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Delete from idiomas where id_idioma=${consulta.rows[0].id_idioma}
                </sql:update>
                <jsp:forward page="Mantenimiento_Idiomas.jsp">
                    <jsp:param name="resultado" value="datos_eliminados"/>
                </jsp:forward>  
            </c:if>
        </c:when>
    </c:choose>
</body>
</html>
