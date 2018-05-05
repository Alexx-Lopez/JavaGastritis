<%-- 
    Document   : Consultas_Cargo
    Created on : 04-may-2018, 12:18:15
    Author     : Alexx
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="c_cargo" scope="request" class="Beans.CargoBeans">
    <jsp:setProperty name="c_cargo" property="*"/>
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
                select * from cargo where Nombre='${c_cargo.txt_cargo}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <jsp:forward page="Mantenimiento_Cargo.jsp">
                    <jsp:param name="resultado" value="Registro_existente"/>
                </jsp:forward> 
            </c:if>
            <c:if test="${consulta.rowCount == 0}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Insert into cargo(Nombre,Descripcion) values(?,?)
                    <sql:param value="${c_cargo.txt_cargo}"/>
                    <sql:param value="${c_cargo.txt_descripcion}"/>
                </sql:update>

                <jsp:forward page="Mantenimiento_Cargo.jsp">
                    <jsp:param name="resultado" value="datos_ingresados"/>
                </jsp:forward>   

            </c:if>
        </c:when>
        <c:when test="${param.Modificar!= null}">
            <sql:query dataSource="jdbc/mysql" var="consulta">
                select * from cargo where Nombre='${c_cargo.cmb_cargo}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Update cargo set Descripcion=? where idCargo=${consulta.rows[0].idCargo}
                    <sql:param value="${c_cargo.txt_descripcion}"/>
                </sql:update>
                <jsp:forward page="Mantenimiento_Cargo.jsp">
                    <jsp:param name="resultado" value="datos_actualizados"/>
                </jsp:forward>  
            </c:if>
        </c:when>
        <c:when test="${param.Eliminar!=null}">
            <sql:query dataSource="jdbc/mysql" var="consulta">
                select * from cargo where Nombre='${c_cargo.cmb_cargo}'
            </sql:query>
            <c:if test="${consulta.rowCount == 1}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Delete from cargo where idCargo=${consulta.rows[0].idCargo}
                </sql:update>
                <jsp:forward page="Mantenimiento_Cargo.jsp">
                    <jsp:param name="resultado" value="datos_eliminados"/>
                </jsp:forward>  
            </c:if>
        </c:when>
    </c:choose>
</body>
</html>
