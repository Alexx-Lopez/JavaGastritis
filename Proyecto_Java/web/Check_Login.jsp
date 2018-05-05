<%-- 
    Document   : Check_Login
    Created on : 30-abr-2018, 11:24:10
    Author     : Alexx
--%>
<%@page session="true" language="java" import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
        <jsp:scriptlet>
            String usuario = request.getParameter("usuario");
            String clave = request.getParameter("clave");
            HttpSession sesionOk;
        </jsp:scriptlet>
        <%-- Consulta Administradores --%>
        <sql:query dataSource="jdbc/mysql" var="consulta">
            select * from admin where nombre='<%=usuario%>' and contraseña='<%=clave%>'
        </sql:query>
            <%-- Consulta Empleados --%>
        <sql:query dataSource="jdbc/mysql" var="consulta1">
            select * from empleado where Nombre='<%=usuario%>' and Clave='<%=clave%>'
        </sql:query>
            <%-- Consulta Usuarios --%>
        <sql:query dataSource="jdbc/mysql" var="consulta2">
            select * from usuarioadmon where idUsuarios='<%=usuario%>' and Clave='<%=clave%>'
        </sql:query>

            
            <%-- Acceso administrador --%>
        <c:if test="${consulta.rowCount == 1}">
            <jsp:scriptlet>
                sesionOk = request.getSession();
                sesionOk.setAttribute("usuario", usuario);
            </jsp:scriptlet>
            <jsp:forward page="menu_admin.jsp">
                <jsp:param name="inicio" value="Bienvenido Administrador ${consulta.rows[0].nombre}"/> 
            </jsp:forward> 
        </c:if>
            <%-- Acceso Empleado --%>
        <c:if test="${consulta1.rowCount == 1}">
            <jsp:scriptlet>
                sesionOk = request.getSession();
                sesionOk.setAttribute("usuario", usuario);
            </jsp:scriptlet>
            <jsp:forward page="menu_empleado.jsp">
                <jsp:param name="inicio" value="Bienvenido Empleado ${consulta1.rows[0].Nombre}"/> 
            </jsp:forward> 
        </c:if>
            <%-- Acceso Usuario --%>
        <c:if test="${consulta2.rowCount == 1}">
            <jsp:scriptlet>
                sesionOk = request.getSession();
                sesionOk.setAttribute("usuario",usuario);
            </jsp:scriptlet>
            <jsp:forward page="menu_usuario.jsp">
                <jsp:param name="inicio" value="Bienvenido Usuario ${consulta2.rows[0].Usuario}"/> 
            </jsp:forward> 
        </c:if>
            
            <%-- Credenciales no existen --%>
        <c:if test="${consulta.rowCount == 0}">
            <jsp:forward page="index.jsp">
                <jsp:param name="error" value="Usuario y/o clave Incorrecto. Vuelve a intentarlo."/>
            </jsp:forward> 
        </c:if>
    </body>
</html>
