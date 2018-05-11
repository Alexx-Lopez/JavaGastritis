<%--- 
    Document   : Mantenimiento_Autor
    Created on : 10-may-2018, 14:38:17
    Author     : karin
---%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="c_autor" scope="request" class="Beans.AutorBeans">
    <jsp:setProperty name="c_autor" property="*"/>
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
                select * from autor where Nombre_Autor='${c_autor.txt_autor}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <jsp:forward page="Mantenimiento_Autor.jsp">
                    <jsp:param name="resultado" value="Registro_existente"/>
                </jsp:forward> 
            </c:if>
            <c:if test="${consulta.rowCount == 0}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Insert into autor(Nombre_Autor) values(?)
                    <sql:param value="${c_autor.txt_autor}"/>
                </sql:update>

                <jsp:forward page="Mantenimiento_Autor.jsp">
                    <jsp:param name="resultado" value="datos_ingresados"/>
                </jsp:forward>   

            </c:if>
        </c:when>
        <c:when test="${param.Modificar!= null}">
            <sql:query dataSource="jdbc/mysql" var="consulta">
                select * from autor where Nombre_Autor='${c_autor.cmb_autor}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Update autor set Nombre_Autor=? where idAutor=${consulta.rows[0].idAutor}
                    <sql:param value="${c_autor.txt_autor}"/>
                </sql:update>
                <jsp:forward page="Mantenimiento_Autor.jsp">
                    <jsp:param name="resultado" value="datos_actualizados"/>
                </jsp:forward>  
            </c:if>
        </c:when>
        <c:when test="${param.Eliminar!=null}">
            <sql:query dataSource="jdbc/mysql" var="consulta">
                select * from autor where Nombre_Autor='${c_autor.cmb_autor}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Delete from autor where idAutor=${consulta.rows[0].idAutor}
                </sql:update>
                <jsp:forward page="Mantenimiento_Autor.jsp">
                    <jsp:param name="resultado" value="datos_eliminados"/>
                </jsp:forward>  
            </c:if>
        </c:when>
    </c:choose>
</body>
</html>
