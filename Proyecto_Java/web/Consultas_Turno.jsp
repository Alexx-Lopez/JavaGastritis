<%-- 
    Document   : Consultas_Turno
    Created on : 28-abr-2018, 6:49:53
    Author     : Alexx
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="c_turno" scope="request" class="Beans.TurnoBeans">
    <jsp:setProperty name="c_turno" property="*"/>
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
                    select * from turno where Nombre='${c_turno.txt_turno}'
                </sql:query>
                <c:if test="${consulta.rowCount == 1}">
                        <jsp:forward page="Mantenimiento_Turno.jsp">
                            <jsp:param name="resultado" value="Registro_existente"/>
                        </jsp:forward> 
                </c:if>
                <c:if test="${consulta.rowCount == 0}">
                    <sql:update dataSource="jdbc/mysql" var="insercion">
                        Insert into turno(Nombre,Horario_Inicio,Horario_Final) values(?,?,?)
                        <sql:param value="${c_turno.txt_turno}"/>
                        <sql:param value="${c_turno.txt_hora_inicio}"/>
                        <sql:param value="${c_turno.txt_hora_fin}"/>
                    </sql:update>
                        
                    <jsp:forward page="Mantenimiento_Turno.jsp">
                        <jsp:param name="resultado" value="datos_ingresados"/>
                    </jsp:forward>   

                </c:if>
            </c:when>
            <c:when test="${param.Modificar!= null}">
                <sql:query dataSource="jdbc/mysql" var="consulta">
                    select * from turno where Nombre='${c_turno.cmb_turno}'
                </sql:query>
                <c:if test="${consulta.rowCount == 1}">
                    <sql:update dataSource="jdbc/mysql" var="insercion">
                        Update turno set Horario_Inicio=?,Horario_Final=? where idTurno=${consulta.rows[0].idTurno}
                        <sql:param value="${c_turno.txt_hora_inicio}"/>
                        <sql:param value="${c_turno.txt_hora_fin}"/>
                    </sql:update>
                    <jsp:forward page="Mantenimiento_Turno.jsp">
                        <jsp:param name="resultado" value="datos_actualizados"/>
                    </jsp:forward>  
                </c:if>
            </c:when>
            <c:when test="${param.Eliminar!=null}">
                <sql:query dataSource="jdbc/mysql" var="consulta">
                    select * from turno where Nombre='${c_turno.cmb_turno}'
                </sql:query>
                <c:if test="${consulta.rowCount == 1}">
                    <sql:update dataSource="jdbc/mysql" var="insercion">
                        Delete from turno  where idTurno=${consulta.rows[0].idTurno}
                    </sql:update>
                    <jsp:forward page="Mantenimiento_Turno.jsp">
                        <jsp:param name="resultado" value="datos_eliminados"/>
                    </jsp:forward>  
                </c:if>
            </c:when>
        </c:choose>
    </body>
</html>
