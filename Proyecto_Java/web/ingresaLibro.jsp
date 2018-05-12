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
        <c:set var="codigo" value="${param.CodigoL}"/>
        <c:set var="editorial" value="${param.editorial}"/>
        <c:set var="lugar" value="${param.editorial_place}"/>
        <c:set var="anio" value="${param.editorial_anio}"/>
        <c:set var="isbn" value="${param.txt_isbn}"/>
        <c:set var="issn" value="${param.txt_issn}"/>
        <c:set var="titulo" value="${param.Titulo}"/>
        <c:set var="edicion" value="${param.Edicion}"/>
        <c:set var="descripcion" value="${param.Descripcion}"/>
        <c:set var="precio" value="${param.Precio}"/>
        <c:set var="fecha" value="${param.Fecha}"/>
        <c:set var="volumen" value="${param.Volumen}"/>
        <c:set var="notas" value="${param.Notas}"/>
        <c:set var="codDisco" value="${param.txt_coddisco}"/>
        <c:set var="tipoDisco" value="${param.tipodisco}"/>
        <c:set var="codTesis" value="${param.tesis_codigo}"/>
        <c:set var="tipoTesis" value="${param.tesis_tipo}"/>
        <c:set var="placeTesis" value="${param.tesis_lugar}"/>
        <c:set var="gradeTesis" value="${param.tesis_grado}"/>
        <c:set var="insTesis" value="${param.tesis_institucion}"/>
        
    <sql:update var="ingresaMaterial" dataSource="jdbc/mysql">
            INSERT INTO material(Codigo_Material,Titulo,Edicion,Descripcion,Tipo_Material,Precio,Fecha_Entrada,Volumen,Notas) values (?,?,?,?,?,?,?,?,?)
            <sql:param value="${codigo}"/>
            <sql:param value="${titulo}"/>
            <sql:param value="${edicion}"/>  
            <sql:param value="${descripcion}"/>
            <sql:param value="${selectValor}"/>
            <sql:param value="${precio}"/>  
            <sql:param value="${fecha}"/>
            <sql:param value="${volumen}"/>
            <sql:param value="${notas}"/>
    </sql:update>
    
    <sql:update var="ingresaEditorial" dataSource="jdbc/mysql">
            INSERT INTO editorial(nombre_editorial,lugar,año,Cod_Material) values (?,?,?,?)
            <sql:param value="${editorial}"/>
            <sql:param value="${lugar}"/>  
            <sql:param value="${anio}"/>
            <sql:param value="${codigo}"/>
    </sql:update>
            
     <h1>Valor: </h1>
     <c:if test="${selectValor == 'Book' || selectValor == 'Libro'}">
            <sql:update var="ingresaLibro" dataSource="jdbc/mysql">
                INSERT INTO libros(ISBN,Codigo_Material) values (?,?)
                <sql:param value="${isbn}"/>
                <sql:param value="${codigo}"/>  
            </sql:update>
            <h1>Completo Libro</h1>
     </c:if>
     <c:if test="${selectValor == 'Revista' || selectValor == 'Magazine'}">
            <sql:update var="ingresaLibro" dataSource="jdbc/mysql">
                INSERT INTO revistas(ISSN,Codigo_Material) values (?,?)
                <sql:param value="${issn}"/>
                <sql:param value="${codigo}"/>  
            </sql:update>
            <h1>Completo Revista</h1>
     </c:if>
     <c:if test="${selectValor == 'Tesis' || selectValor == 'Thesis'}">
            <sql:update var="ingresaTesis" dataSource="jdbc/mysql">
                INSERT INTO tesis(cod_tesis,Tipo_de_investigacion,Lugar_investigacion,Grado_academico,Institucion,Cod_Material) values (?,?,?,?,?,?)
                <sql:param value="${codTesis}"/>
                <sql:param value="${tipoTesis}"/>  
                <sql:param value="${placeTesis}"/>
                <sql:param value="${gradeTesis}"/>
                <sql:param value="${insTesis}"/>
                <sql:param value="${codigo}"/>
            </sql:update>
                <h1>Completo Tesis</h1>
     </c:if>
     <c:if test="${selectValor == 'Disco' || selectValor == 'Disk'}">
         <sql:update var="ingresaDisco" dataSource="jdbc/mysql">
                INSERT INTO discos(Codigo,Tipo_de_disco,Codigo_Material) values (?,?,?)
                <sql:param value="${codDisco}"/>
                <sql:param value="${tipoDisco}"/>
                <sql:param value="${codigo}"/>  
            </sql:update>
            <h1>Completo Disco</h1>
     </c:if>
 


