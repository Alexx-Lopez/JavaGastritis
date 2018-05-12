<%-- 
    Document   : Consultas_Temas
    Created on : 12-may-2018, 10:18:15
    Author     : karin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="c_temas" scope="request" class="Beans.TemasBeans">
    <jsp:setProperty name="c_temas" property="*"/>
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
                select * from temas where Nombre_Tema='${c_temas.txt_temas}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <jsp:forward page="Mantenimiento_Temas.jsp">
                    <jsp:param name="resultado" value="Registro_existente"/>
                </jsp:forward> 
            </c:if>
            <c:if test="${consulta.rowCount == 0}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Insert into temas(Nombre_Tema, Codigo_Material) values(?,?)
                    <sql:param value="${c_temas.txt_temas}"/>
                    <sql:param value="${c_temas.txt_cod_mat}"/>
                </sql:update>

                <jsp:forward page="Mantenimiento_Temas.jsp">
                    <jsp:param name="resultado" value="datos_ingresados"/>
                </jsp:forward>   

            </c:if>
        </c:when>
        <c:when test="${param.Modificar!= null}">
            <sql:query dataSource="jdbc/mysql" var="consulta">
                select * from temas where Nombre_Tema='${c_temas.cmb_temas}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Update temas set Nombre_Tema=? where idTemas=${consulta.rows[0].idTemas}
                    <sql:param value="${c_temas.txt_temas}"/>
                </sql:update>
                <jsp:forward page="Mantenimiento_Temas.jsp">
                    <jsp:param name="resultado" value="datos_actualizados"/>
                </jsp:forward>  
            </c:if>
        </c:when>
        <c:when test="${param.Eliminar!=null}">
            <sql:query dataSource="jdbc/mysql" var="consulta">
                select * from temas where Nombre_Tema='${c_temas.cmb_temas}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Delete from temas where idTemas=${consulta.rows[0].idTemas}
                </sql:update>
                <jsp:forward page="Mantenimiento_Temas.jsp">
                    <jsp:param name="resultado" value="datos_eliminados"/>
                </jsp:forward>  
            </c:if>
        </c:when>
    </c:choose>
</body>
</html>

