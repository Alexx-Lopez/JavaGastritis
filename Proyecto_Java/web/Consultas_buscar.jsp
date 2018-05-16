<%-- 
    Document   : Consultar_material
    Created on : 11-may-2018, 19:38:10
    Author     : darv_
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="c_bus" scope="request" class="Beans.consultabeans">
    <jsp:setProperty name="c_bus" property="*"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:choose>

            <c:when test="${param.buscar != null}">
                <sql:query dataSource="jdbc/mysql" var="consulta">
                    select Codigo_Material,Titulo,Edicion,Tipo_Material,Volumen from Material where titulo  LIKE  '%${c_bus.txt_titulo}%'
                </sql:query>

                <c:if test="${consulta.rowCount != 0}">
                    <jsp:forward page="realizar_consulta.jsp">
                        <jsp:param name="resultado" value="Busqueda_existosa"/>
                        <jsp:param name="tituloo" value="${c_bus.txt_titulo}"/>
                    </jsp:forward> 
                </c:if>
            </c:when>

            <c:when test="${param.buscar2 != null}">
                
                <script>
                   <%-- alert('${c_bus.txt_codigo_material}');--%>
                </script>
                <sql:query dataSource="jdbc/mysql" var="consulta">
                    select Item,EstadoMaterial,Ubicacion from copia where Codigo_Material = '${c_bus.txt_codigo_material}'
                </sql:query>
                
                <script>
                    <%--alert('${c_bus.txt_codigo_material}');--%>
                </script>   
                <c:if test="${consulta.rowCount != 0}">
                    <jsp:forward page="realizar_consulta.jsp">
                        <jsp:param name="codigoo" value="${c_bus.txt_codigo_material}"/>
                        <jsp:param name="tituloo" value="${c_bus.txt_titulo}"/>
                        <jsp:param name="id" value="${c_bus.txt_codigo_material}"/>
                    </jsp:forward> 
                </c:if>
            </c:when>       


        </c:choose>
    </body>
</html>



