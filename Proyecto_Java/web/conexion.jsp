<%-- 
    Document   : conexion
    Created on : 03-22-2018, 02:37:48 PM
    Author     : karin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%
    Connection conexion = null;
    PreparedStatement st = null;
    ResultSet rs = null;
    
    //Leemos el driver de Mysql
    Class.forName("com.mysql.jdbc.Driver");
    
    // Se obtiene una conexión con la base de datos.
    conexion = DriverManager.getConnection(
    "jdbc:mysql://localhost/biblioteca", "root", "");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conexion</title>
    </head>
    <body>
        
    </body>
</html>
