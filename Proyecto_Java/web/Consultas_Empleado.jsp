<%-- 
    Document   : Consultas_Empleado
    Created on : 11-may-2018, 10:37:58
    Author     : Alexx
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="c_empleado" scope="request" class="Beans.EmpleadoBeans">
    <jsp:setProperty name="c_empleado" property="*"/>
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
                    select * from empleado where idEmpleado='${c_empleado.txt_id}'
                </sql:query>
                <c:if test="${consulta.rowCount == 1}">
                    <jsp:forward page="Mantenimiento_Empleado.jsp">
                        <jsp:param name="resultado" value="Registro_existente"/>
                    </jsp:forward> 
                </c:if>
                <c:if test="${consulta.rowCount == 0}">
                    <!--Consulta a la tabla cargo para extraer el id del cargo buscando por el nombre-->
                    <sql:query dataSource="jdbc/mysql" var="consulta_cargo">
                        select * from cargo where Nombre="${c_empleado.cmb_cargo}"
                    </sql:query>

                    <!--Consulta a la tabla turno para extraer el id del turno buscando por el nombre-->
                    <sql:query dataSource="jdbc/mysql" var="consulta_turno">
                        select * from turno where Nombre="${c_empleado.cmb_turno}"
                    </sql:query>

                    <sql:update dataSource="jdbc/mysql" var="insercion">
                        Insert into empleado(idEmpleado,idCargo,idTurno,Nombre,Apellido,Email,Telefono,DUI,NIT,Salario,Activo,Clave) values(?,?,?,?,?,?,?,?,?,?,?,?)
                        <sql:param value="${c_empleado.txt_id}"/>
                        <sql:param value="${consulta_cargo.rows[0].idCargo}"/>
                        <sql:param value="${consulta_turno.rows[0].idTurno}"/>
                        <sql:param value="${c_empleado.txt_nombre}"/>
                        <sql:param value="${c_empleado.txt_apellido}"/>
                        <sql:param value="${c_empleado.txt_correo}"/>
                        <sql:param value="${c_empleado.txt_telefono}"/>
                        <sql:param value="${c_empleado.txt_dui}"/>
                        <sql:param value="${c_empleado.txt_nit}"/>
                        <sql:param value="${c_empleado.txt_salario}"/>
                        <sql:param value="${c_empleado.r_estado}"/>
                        <sql:param value="${c_empleado.txt_clave}"/>
                    </sql:update>

                    <jsp:forward page="Mantenimiento_Empleado.jsp">
                        <jsp:param name="resultado" value="datos_ingresados"/>
                    </jsp:forward>   

                </c:if>
            </c:when>
            <c:when test="${param.Modificar!= null}">
                <sql:query dataSource="jdbc/mysql" var="consulta">
                    select * from empleado where idEmpleado='${c_empleado.txt_id_busqueda}'
                </sql:query>
                <c:if test="${consulta.rowCount == 1}">
                    <!--Consulta a la tabla cargo para extraer el id del cargo buscando por el nombre-->
                    <sql:query dataSource="jdbc/mysql" var="consulta_cargo">
                        select * from cargo where Nombre="${c_empleado.cmb_cargo}"
                    </sql:query>

                    <!--Consulta a la tabla turno para extraer el id del turno buscando por el nombre-->
                    <sql:query dataSource="jdbc/mysql" var="consulta_turno">
                        select * from turno where Nombre="${c_empleado.cmb_turno}"
                    </sql:query>

                    <sql:update dataSource="jdbc/mysql" var="insercion">
                        Update empleado set idCargo=?, idTurno=?, Nombre=?, Apellido=?, Email=?, Telefono=?, DUI=?, NIT=?, Salario=?, Activo=?, Clave=? WHERE idEmpleado=${c_empleado.txt_id_busqueda}
                        <sql:param value="${consulta_cargo.rows[0].idCargo}"/>
                        <sql:param value="${consulta_turno.rows[0].idTurno}"/>
                        <sql:param value="${c_empleado.txt_nombre}"/>
                        <sql:param value="${c_empleado.txt_apellido}"/>
                        <sql:param value="${c_empleado.txt_correo}"/>
                        <sql:param value="${c_empleado.txt_telefono}"/>
                        <sql:param value="${c_empleado.txt_dui}"/>
                        <sql:param value="${c_empleado.txt_nit}"/>
                        <sql:param value="${c_empleado.txt_salario}"/>
                        <sql:param value="${c_empleado.r_estado}"/>
                        <sql:param value="${c_empleado.txt_clave}"/>
                    </sql:update>

                    <!--se vacia la variable para que regrese vacia a la página y no llene los campos por defecto-->
                    <jsp:useBean id="c_empleado_act1" scope="request" class="Beans.EmpleadoBeans">
                        <jsp:setProperty name="c_empleado" property="txt_id_busqueda" value=""/>
                    </jsp:useBean> 

                    <jsp:forward page="Mantenimiento_Empleado.jsp">
                        <jsp:param name="resultado" value="datos_actualizados"/>
                    </jsp:forward>  
                </c:if>

                <c:if test="${consulta.rowCount == 0}">

                    <!--se vacia la variable para que regrese vacia a la página y no llene los campos por defecto-->
                    <jsp:useBean id="c_empleado_act2" scope="request" class="Beans.EmpleadoBeans">
                        <jsp:setProperty name="c_empleado" property="txt_id_busqueda" value=""/>
                    </jsp:useBean> 

                    <jsp:forward page="Mantenimiento_Empleado.jsp">
                        <jsp:param name="resultado" value="Registro_error"/>
                    </jsp:forward> 

                </c:if>
            </c:when>
            <c:when test="${param.Eliminar!=null}">
                <sql:query dataSource="jdbc/mysql" var="consulta">
                    select * from empleado where idEmpleado='${c_empleado.txt_id_busqueda}'
                </sql:query>
                <c:if test="${consulta.rowCount == 1}">
                    <sql:update dataSource="jdbc/mysql" var="insercion">
                        Delete from empleado where idEmpleado=${consulta.rows[0].idEmpleado}
                    </sql:update>

                    <!--se vacia la variable para que regrese vacia a la página y no llene los campos por defecto-->
                    <jsp:useBean id="c_empleado_eli1" scope="request" class="Beans.EmpleadoBeans">
                        <jsp:setProperty name="c_empleado" property="txt_id_busqueda" value=""/>
                    </jsp:useBean> 

                    <jsp:forward page="Mantenimiento_Empleado.jsp">
                        <jsp:param name="resultado" value="datos_eliminados"/>
                    </jsp:forward>  
                </c:if>


                <c:if test="${consulta.rowCount == 0}">

                    <!--se vacia la variable para que regrese vacia a la página y no llene los campos por defecto-->
                    <jsp:useBean id="c_empleado_eli2" scope="request" class="Beans.EmpleadoBeans">
                        <jsp:setProperty name="c_empleado" property="txt_id_busqueda" value=""/>
                    </jsp:useBean> 

                    <jsp:forward page="Mantenimiento_Empleado.jsp">
                        <jsp:param name="resultado" value="Registro_error"/>
                    </jsp:forward> 
                </c:if>
            </c:when>
            <c:when test="${param.Buscar != null}">
                <sql:query dataSource="jdbc/mysql" var="consulta_e">
                    SELECT * FROM empleado where idEmpleado=${c_empleado.txt_id_busqueda}
                </sql:query>
                <c:if test="${consulta_e.rowCount == 1}">
                    <sql:query dataSource="jdbc/mysql" var="consulta_c">
                        SELECT Nombre FROM cargo where idCargo=${consulta_e.rows[0].idCargo}
                    </sql:query>
                    <sql:query dataSource="jdbc/mysql" var="consulta_t">
                        SELECT Nombre FROM turno where idTurno=${consulta_e.rows[0].idTurno}
                    </sql:query>
                    <jsp:useBean id="s_empleado" scope="request" class="Beans.EmpleadoBeans">
                        <jsp:setProperty name="c_empleado" property="txt_id_busqueda" value="${consulta_e.rows[0].idEmpleado}"/>
                        <jsp:setProperty name="c_empleado" property="txt_nombre" value="${consulta_e.rows[0].Nombre}"/>
                        <jsp:setProperty name="c_empleado" property="txt_apellido" value="${consulta_e.rows[0].Apellido}"/>
                        <jsp:setProperty name="c_empleado" property="txt_correo" value="${consulta_e.rows[0].Email}"/>
                        <jsp:setProperty name="c_empleado" property="txt_telefono" value="${consulta_e.rows[0].Telefono}"/>
                        <jsp:setProperty name="c_empleado" property="txt_dui" value="${consulta_e.rows[0].DUI}"/>
                        <jsp:setProperty name="c_empleado" property="txt_nit" value="${consulta_e.rows[0].NIT}"/>

                        <jsp:setProperty name="c_empleado" property="cmb_cargo" value="${consulta_c.rows[0].Nombre}"/>
                        <jsp:setProperty name="c_empleado" property="cmb_turno" value="${consulta_t.rows[0].Nombre}"/>

                        <jsp:setProperty name="c_empleado" property="txt_salario" value="${consulta_e.rows[0].Salario}"/>
                        <jsp:setProperty name="c_empleado" property="r_estado" value="${consulta_e.rows[0].Activo}"/>
                        <jsp:setProperty name="c_empleado" property="txt_clave" value="${consulta_e.rows[0].Clave}"/>
                    </jsp:useBean>
                    <jsp:forward page="Mantenimiento_Empleado.jsp">
                        <jsp:param name="resultado" value="registro_encontrado"/>
                    </jsp:forward>
                </c:if>
                <c:if test="${consulta_e.rowCount == 0}">
                    
                    <!--se vacia la variable para que regrese vacia a la página y no llene los campos por defecto-->
                    <jsp:useBean id="c_empleado_bus" scope="request" class="Beans.EmpleadoBeans">
                        <jsp:setProperty name="c_empleado" property="txt_id_busqueda" value=""/>
                    </jsp:useBean> 
                    
                    <jsp:forward page="Mantenimiento_Empleado.jsp">
                        <jsp:param name="resultado" value="registro_no_encontrado"/>
                    </jsp:forward>
                </c:if>
            </c:when>
        </c:choose>
    </body>
</html>
