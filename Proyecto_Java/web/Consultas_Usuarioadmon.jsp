<%-- 
    Document   : Consultas_Usuarioadmon
    Created on : 13-may-2018, 10:19:10
    Author     : Alexx
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="c_usuarioadmon" scope="request" class="Beans.UsuarioadmonBeans">
    <jsp:setProperty name="c_usuarioadmon" property="*"/>
</jsp:useBean>

<jsp:scriptlet>
    //se extrae el id del empleado que ha iniciado sesión  y luego se realiza un set en el 
    //beans
    String id_emp = "";

    //se crea una variable de sesion para almacenar el id de la persona que ingreso
    HttpSession sesion_emp = request.getSession();
    id_emp = (String) sesion_emp.getAttribute("usuario");
</jsp:scriptlet>
<jsp:setProperty name="c_usuarioadmon" property="id_empleado" value="<%=id_emp%>"/>

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
                    select * from usuarioadmon where idUsuarios='${c_usuarioadmon.txt_id}'
                </sql:query>
                <c:if test="${consulta.rowCount == 1}">
                    <jsp:forward page="Mantenimiento_Usuarioadmon.jsp">
                        <jsp:param name="resultado" value="Registro_existente"/>
                    </jsp:forward> 
                </c:if>
                <c:if test="${consulta.rowCount == 0}">
                    <!--Consulta a la tabla rol para extraer el id del rol buscando por el nombre-->
                    <sql:query dataSource="jdbc/mysql" var="consulta_rol">
                        select * from rol where Nombre="${c_usuarioadmon.cmb_rol}"
                    </sql:query>

                    <!-- se realiza primero la inserción a la tabla usuarioadmon-->
                    <sql:update dataSource="jdbc/mysql" var="insercion">
                        Insert into usuarioadmon(idUsuarios,idEmpleado,Usuario,Clave,Activo) values(?,?,?,?,?)
                        <sql:param value="${c_usuarioadmon.txt_id}"/>
                        <sql:param value="${c_usuarioadmon.id_empleado}"/>
                        <sql:param value="${c_usuarioadmon.txt_nombre}"/>
                        <sql:param value="${c_usuarioadmon.txt_clave}"/>
                        <sql:param value="${c_usuarioadmon.r_estado}"/>                        
                    </sql:update>

                    <!-- luego se realiza la inserción a la tabla usuarioadmonrol-->
                    <sql:update dataSource="jdbc/mysql" var="insercion">
                        Insert into usuarioadmonrol(idRol,idUsuarios) values(?,?)
                        <sql:param value="${consulta_rol.rows[0].idRol}"/> 
                        <sql:param value="${c_usuarioadmon.txt_id}"/>                 
                    </sql:update>

                    <jsp:forward page="Mantenimiento_Usuarioadmon.jsp">
                        <jsp:param name="resultado" value="datos_ingresados"/>
                    </jsp:forward>   
                </c:if>
            </c:when>
            <c:when test="${param.Modificar!= null}">
                <sql:query dataSource="jdbc/mysql" var="consulta">
                    select * from usuarioadmon where idUsuarios='${c_usuarioadmon.txt_id_busqueda}'
                </sql:query>
                <c:if test="${consulta.rowCount == 1}">
                    <!--Consulta a la tabla rol para extraer el id del rol buscando por el nombre-->
                    <sql:query dataSource="jdbc/mysql" var="consulta">
                        select * from rol where Nombre="${c_usuarioadmon.cmb_rol}"
                    </sql:query>

                     <!-- se actualiza la tabla usuarioadmon-->
                    <sql:update dataSource="jdbc/mysql" var="insercion">
                        Update usuarioadmon set idEmpleado=?, Usuario=?, Clave=?, Activo=?  WHERE idUsuarios=${c_usuarioadmon.txt_id_busqueda}
                        <sql:param value="${c_usuarioadmon.id_empleado}"/>
                        <sql:param value="${c_usuarioadmon.txt_nombre}"/>
                        <sql:param value="${c_usuarioadmon.txt_clave}"/>
                        <sql:param value="${c_usuarioadmon.r_estado}"/> 
                    </sql:update>
                        
                    <!-- se actualiza la tabla usuarioadmonrol-->
                    <sql:update dataSource="jdbc/mysql" var="insercion">
                        Update usuarioadmonrol set idRol=? WHERE idUsuarios=${c_usuarioadmon.txt_id_busqueda}
                        <sql:param value="${consulta.rows[0].idRol}"/>
                    </sql:update>

                    <!--se vacia la variable para que regrese vacia a la página y no llene los campos por defecto-->
                    <jsp:setProperty name="c_usuarioadmon" property="txt_id_busqueda" value=""/>

                    <jsp:forward page="Mantenimiento_Usuarioadmon.jsp">
                        <jsp:param name="resultado" value="datos_actualizados"/>
                    </jsp:forward>  
                </c:if>

                <c:if test="${consulta.rowCount == 0}">

                    <!--se vacia la variable para que regrese vacia a la página y no llene los campos por defecto-->
                        <jsp:setProperty name="c_usuarioadmon" property="txt_id_busqueda" value=""/>

                    <jsp:forward page="Mantenimiento_Usuarioadmon.jsp">
                        <jsp:param name="resultado" value="Registro_error"/>
                    </jsp:forward> 

                </c:if>
            </c:when>
            <c:when test="${param.Eliminar!=null}">
                <sql:query dataSource="jdbc/mysql" var="consulta">
                   select * from usuarioadmon where idUsuarios='${c_usuarioadmon.txt_id_busqueda}'
                </sql:query>
                <c:if test="${consulta.rowCount == 1}">
                    
                    <!-- se elimina primero de la tabla usuarioadmonrol-->
                    <sql:update dataSource="jdbc/mysql" var="insercion">
                        Delete from usuarioadmonrol where idUsuarios=${consulta.rows[0].idUsuarios}
                    </sql:update>
                    
                     <!-- luego se elimina de la tabla usuarioadmon-->
                    <sql:update dataSource="jdbc/mysql" var="insercion">
                        Delete from usuarioadmon where idUsuarios=${consulta.rows[0].idUsuarios}
                    </sql:update>

                     <!--se vacia la variable para que regrese vacia a la página y no llene los campos por defecto-->
                    <jsp:setProperty name="c_usuarioadmon" property="txt_id_busqueda" value=""/>

                    <jsp:forward page="Mantenimiento_Usuarioadmon.jsp">
                        <jsp:param name="resultado" value="datos_eliminados"/>
                    </jsp:forward>  
                </c:if>


                <c:if test="${consulta.rowCount == 0}">

                     <!--se vacia la variable para que regrese vacia a la página y no llene los campos por defecto-->
                    <jsp:setProperty name="c_usuarioadmon" property="txt_id_busqueda" value=""/>

                    <jsp:forward page="Mantenimiento_Usuarioadmon.jsp">
                        <jsp:param name="resultado" value="Registro_error"/>
                    </jsp:forward> 
                </c:if>
            </c:when>
            <c:when test="${param.Buscar != null}">
                <sql:query dataSource="jdbc/mysql" var="consulta_u">
                    select ua.idUsuarios, ua.Usuario, ua.Clave, ua.Activo, r.Nombre from usuarioadmon ua INNER JOIN  usuarioadmonrol uar on ua.idUsuarios=uar.idUsuarios 
                    INNER JOIN  rol r on uar.idRol=r.idRol where ua.idUsuarios=${c_usuarioadmon.txt_id_busqueda}
                </sql:query>
                <c:if test="${consulta_u.rowCount == 1}">

                    <jsp:setProperty name="c_usuarioadmon" property="txt_id_busqueda" value="${consulta_u.rows[0].idUsuarios}"/>
                    <jsp:setProperty name="c_usuarioadmon" property="txt_nombre" value="${consulta_u.rows[0].Usuario}"/>
                    <jsp:setProperty name="c_usuarioadmon" property="r_estado" value="${consulta_u.rows[0].Activo}"/>
                    <jsp:setProperty name="c_usuarioadmon" property="txt_clave" value="${consulta_u.rows[0].Clave}"/>
                    <jsp:setProperty name="c_usuarioadmon" property="cmb_rol" value="${consulta_u.rows[0].Nombre}"/>

                    <jsp:forward page="Mantenimiento_Usuarioadmon.jsp">
                        <jsp:param name="resultado" value="registro_encontrado"/>
                    </jsp:forward>
                </c:if>
                <c:if test="${consulta_u.rowCount == 0}">

                    <!--se vacia la variable para que regrese vacia a la página y no llene los campos por defecto-->
                    <jsp:setProperty name="c_usuarioadmon" property="txt_id_busqueda" value=""/>

                    <jsp:forward page="Mantenimiento_Usuarioadmon.jsp">
                        <jsp:param name="resultado" value="registro_no_encontrado"/>
                    </jsp:forward>
                </c:if>
            </c:when>
        </c:choose>
    </body>
</html>

