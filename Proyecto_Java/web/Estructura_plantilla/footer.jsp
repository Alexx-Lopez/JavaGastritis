<%-- 
    Document   : footer
    Created on : 22-abr-2018, 11:07:54
    Author     : Alexx
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<footer style="margin-top: 20px;">
    <div style="width: 100%; text-align: center;text-decoration: none; color: white;">
        <a href="<%=request.getRequestURL()%>?locale=en"><b><fmt:message key="footer_lbl_idioma_ingles"/></b></a>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <a href="<%=request.getRequestURL()%>?locale=es"><b><fmt:message key="footer_lbl_idioma_español"/></b></a>
    </div>
    <br>
    <h5><fmt:message key="footer_lbl_derechos_de_autor"/></h5>
</footer>
