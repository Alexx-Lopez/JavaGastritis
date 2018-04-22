<%-- 
    Document   : ejemplo_inclusión
    Created on : 22-abr-2018, 10:44:20
    Author     : Alexx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- css y js a ocupar-->
        <%@include file="Estructura_plantilla/head.jsp"%>
    </head>
    <body>
        <!--codigo del header-->
        <%@include file="Estructura_plantilla/header.jsp"%>
        
        <!--contenedor-->
        <div style="width:95%; height:500px; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px">
            <span>contenedor</span>
        </div>

        <!--codigo del footer-->
        <%@include file="Estructura_plantilla/footer.jsp"%>
    </body>
</html>
