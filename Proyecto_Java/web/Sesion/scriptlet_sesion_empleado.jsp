<%-- 
    Document   : scriptlet_sesion_empleado
    Created on : 13-may-2018, 11:18:59
    Author     : Alexx
--%>
<%-- Scriptlet para que la página trabaje con la sesión iniciada en el login --%>
<%@ page session="true"%>
<jsp:scriptlet>
    HttpSession sesionOk = request.getSession();
    if (sesionOk.getAttribute("usuario") == null) {
</jsp:scriptlet>        
<jsp:forward page="index.jsp">
    <jsp:param name="error" value="Es obligatorio identificarse"/>
</jsp:forward>
<jsp:scriptlet>
} else {
</jsp:scriptlet>
<c:catch var="error_sql">
    <sql:query dataSource="jdbc/mysql" var="con">
        select * from empleado where idEmpleado=<%=sesionOk.getAttribute("usuario")%>
    </sql:query>
</c:catch>
<c:if test="${not empty error_sql}">
    <jsp:scriptlet>
        sesionOk.invalidate();
    </jsp:scriptlet>
    <jsp:forward page="index.jsp">
        <jsp:param name="error" value="Acceso no permitido"/>
    </jsp:forward>
</c:if>
<c:if test="${con.rowCount == 0}">
    <jsp:scriptlet>
        sesionOk.invalidate();
    </jsp:scriptlet>
    <jsp:forward page="index.jsp">
        <jsp:param name="error" value="Acceso no permitido"/>
    </jsp:forward>
</c:if>
<jsp:scriptlet>
    }
</jsp:scriptlet>
<%-------------------------------------------------------------------------------%>
