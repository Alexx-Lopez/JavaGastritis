<%-- 
    Document   : Check_Logout
    Created on : 30-abr-2018, 19:02:43
    Author     : Alexx
--%>
<!--
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:scriptlet>
    HttpSession sesionOk = request.getSession();
    sesionOk.invalidate();
    response.sendRedirect("index.jsp");
</jsp:scriptlet>
