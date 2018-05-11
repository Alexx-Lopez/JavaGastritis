<%-- 
    Document   : ingresaLibro
    Created on : 04-10-2018, 05:55:29 PM
    Author     : karin
--%>
<%@page session="true" language="java" import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>


 <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Ingresar libro</title>
 
 <script type="text/javascript">
     
</script>
 </head>
 <c:set var="selectValor" value="${param.selectBox}"/>
 
     <h1>Valor: </h1>
     <c:if test="${selectValor == 'Book' || selectValor == 'Libro'}">
     <h1><%=request.getParameter("editorial")%></h1>
     </c:if>
     <c:if test="${selectValor == 'Revista' || selectValor == 'Magazine'}">
     <h1><%=request.getParameter("txt_issn")%></h1>
     </c:if>
     <c:if test="${selectValor == 'Tesis' || selectValor == 'Thesis'}">
     <h1><%=request.getParameter("tesis_codigo")%></h1>
     </c:if>
     <c:if test="${selectValor == 'Disco' || selectValor == 'Disk'}">
     <h1><%=request.getParameter("txt_coddisco")%></h1>
     </c:if>
 


