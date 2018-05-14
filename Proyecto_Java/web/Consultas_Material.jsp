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
     function error()
     {
         alert("¡Datos Incorrectos, No fue posible guardar!");
     }
</script>
 </head>
 <body>
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
        <c:set var="idioma" value="${param.cmb_idiomas}"/>
        <c:set var="autor" value="${param.cmb_autor}"/>
        <c:set var="clasificacion" value="${param.cmb_clasi}"/>
        <c:set var="tema" value="${param.cmb_tema}"/>
        <c:set var="estado" value="${param.cmb_estado}"/>
        

    <c:catch var ="catchException">
        <c:choose>
            <c:when test="${param.Eliminar != null}">
                <sql:update dataSource="jdbc/mysql" var="insercion">
                    Update material set Estado= 'Inactivo' where Codigo_Material=?
                    <sql:param value="${codigo}"/>
                </sql:update>
            </c:when>
            <c:when test="${param.Guardar != null}">
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
            
                <sql:update var="ingresaIdioma" dataSource="jdbc/mysql">
                        INSERT INTO material_idiomas(Codigo_Material,id_idioma) values (?,?)
                        <sql:param value="${codigo}"/>
                        <sql:param value="${idioma}"/>  
                </sql:update>

                <sql:update var="ingresaClasificacion" dataSource="jdbc/mysql">
                        INSERT INTO material_clasificacion(id_clasificacion,Codigo_Material) values (?,?)
                        <sql:param value="${clasificacion}"/>
                        <sql:param value="${codigo}"/>  
                </sql:update>

                <sql:update var="ingresaAutor" dataSource="jdbc/mysql">
                        INSERT INTO autor(Nombre_Autor,Codigo_Material) values (?,?)
                        <sql:param value="${autor}"/>
                        <sql:param value="${codigo}"/>  
                </sql:update>
    
                <sql:update var="ingresaTema" dataSource="jdbc/mysql">
                        INSERT INTO temas(Nombre_Tema,Codigo_Material) values (?,?)
                        <sql:param value="${tema}"/>
                        <sql:param value="${codigo}"/>  
                </sql:update>        
            
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
                           INSERT INTO tesis(cod_tesis,Tipo_de_investigacion,Lugar_investigacion,Grado_academico,Institución,Codigo_Material) values (?,?,?,?,?,?)
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
            </c:when>
            <c:when test="${param.Modificar != null}">
                <sql:update var="modificaMaterial" dataSource="jdbc/mysql">
                       Update material set Titulo=?, Edicion=?, Descripcion=?, Precio=?, Fecha_Entrada=?, Volumen=?, Notas=?, Estado=? WHERE Codigo_Material=?
                        <sql:param value="${titulo}"/>
                        <sql:param value="${edicion}"/>  
                        <sql:param value="${descripcion}"/>
                        <sql:param value="${precio}"/>  
                        <sql:param value="${fecha}"/>
                        <sql:param value="${volumen}"/>
                        <sql:param value="${notas}"/>
                        <sql:param value="${estado}"/>
                        <sql:param value="${codigo}"/>
                </sql:update>
    
                <sql:update var="modificaEditorial" dataSource="jdbc/mysql">
                        Update editorial set nombre_editorial=?, lugar=?, año=? WHERE Cod_Material=?
                        <sql:param value="${editorial}"/>
                        <sql:param value="${lugar}"/>  
                        <sql:param value="${anio}"/>
                        <sql:param value="${codigo}"/>
                </sql:update>
            
                <sql:update var="modificaIdioma" dataSource="jdbc/mysql">
                        Update material_idiomas set id_idioma=? WHERE Codigo_Material=?
                        <sql:param value="${idioma}"/>
                        <sql:param value="${codigo}"/>  
                </sql:update>

                <sql:update var="modificaClasificacion" dataSource="jdbc/mysql">
                        Update material_clasificacion set id_clasificacion=? WHERE Codigo_Material=?
                        <sql:param value="${clasificacion}"/>
                        <sql:param value="${codigo}"/>  
                </sql:update>

                <sql:update var="modificaAutor" dataSource="jdbc/mysql">
                        Update autor set Nombre_Autor=? WHERE Codigo_Material=?
                        <sql:param value="${autor}"/>
                        <sql:param value="${codigo}"/>  
                </sql:update>
    
                <sql:update var="modificaTema" dataSource="jdbc/mysql">
                        Update temas set Nombre_Tema=? WHERE Codigo_Material=?
                        <sql:param value="${tema}"/>
                        <sql:param value="${codigo}"/>  
                </sql:update>        
            
                <c:if test="${selectValor == 'Book' || selectValor == 'Libro'}"> 
                       <sql:update var="modificaLibro" dataSource="jdbc/mysql">
                           Update libros set ISBN=? WHERE Codigo_Material=?
                           <sql:param value="${isbn}"/>
                           <sql:param value="${codigo}"/>  
                       </sql:update>
                       <h1>Completo Libro</h1>
                </c:if>
                <c:if test="${selectValor == 'Revista' || selectValor == 'Magazine'}">
                       <sql:update var="modificaRevista" dataSource="jdbc/mysql">
                           Update revistas set ISSN=? WHERE Codigo_Material=?
                           <sql:param value="${issn}"/>
                           <sql:param value="${codigo}"/>  
                       </sql:update>
                       <h1>Completo Revista</h1>
                </c:if>
                <c:if test="${selectValor == 'Tesis' || selectValor == 'Thesis'}">
                       <sql:update var="modificaaTesis" dataSource="jdbc/mysql">
                           Update tesis set cod_tesis=?, Tipo_de_investigacion=?, Lugar_investigacion=?, Grado_academico=?, Institución=? WHERE Codigo_Material=?
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
                    <sql:update var="modificaDisco" dataSource="jdbc/mysql">
                           Update discos set Codigo=?, Tipo_de_disco=? WHERE Codigo_Material=?
                           <sql:param value="${codDisco}"/>
                           <sql:param value="${tipoDisco}"/>
                           <sql:param value="${codigo}"/>  
                       </sql:update>
                       <h1>Completo Disco</h1>
                </c:if>
            </c:when>
        </c:choose>
    </c:catch>
    <c:if test = "${catchException != null && param.Modificar != null}">
        <jsp:forward page="SUD_Material.jsp">
                <jsp:param name="error" value="Se han encontraron datos incorrectos."/>
         </jsp:forward> 
     </c:if>
    <c:if test = "${catchException != null && param.Guardar != null}">
        <jsp:forward page="Mantenimiento_Material.jsp">
                <jsp:param name="error" value="Datos incorrectos, Imposible guardar!."/>
         </jsp:forward> 
     </c:if>
    <c:if test = "${catchException == null && param.Eliminar != null}">
        <jsp:forward page="Menu_Material.jsp">
                <jsp:param name="inicio" value="Se ha dado de baja al registro ${codigo}"/> 
        </jsp:forward>
     </c:if>
    <c:if test = "${catchException == null && param.Modificar != null}">
        <jsp:forward page="Menu_Material.jsp">
                <jsp:param name="inicio" value="Se ha actualizado el registro ${codigo}"/> 
        </jsp:forward>
     </c:if>
    <c:if test = "${catchException == null && param.Guardar != null}">
        <jsp:forward page="Menu_Material.jsp">
                <jsp:param name="inicio" value="Se ha Guardado el registro ${codigo}"/> 
        </jsp:forward>
     </c:if>
 </body>
</html>

