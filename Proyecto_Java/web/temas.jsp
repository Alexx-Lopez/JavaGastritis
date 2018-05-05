<%-- 
    Document   : temas
    Created on : 04-22-2018, 07:32:09 PM
    Author     : karin
--%>
<%@ include file="conexion.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- css y js a ocupar-->
        <%@include file="Estructura_plantilla/head.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Idiomas</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    
    <body>
        <!--codigo del header-->
        <%@include file="Estructura_plantilla/header.jsp"%>
        
        <!--contenedor-->
        <div style="width:95%; height:2000px; background-color:#f3e8e8ab; margin:0 auto; margin-top:110px; padding: 10px">
            
            <br>
            <h1 style="position: relative; top: -10px; left: 816px;">Tema</h1>
            
            <div  class="container">
                
                <div>
                    <br>
                    <table class="table table-striped table-bordered table-hover" style="position: relative; top: -10px; left: 274px; border-collapse: separate; border-spacing: 1px; margin: 0 auto; background-color: #CCC; width: 50%">
                    <thead>
                        <tr>
                            <th><center>Codigo</center></th>
                            <th><center>Nombre</center></th>
                            <th><center>Cod_Material</center></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        st = conexion.prepareStatement("select idTemas, Nombre_Tema, Codigo_Material from temas");
                        rs = st.executeQuery();
                        while (rs.next()) 
                        {
                        %>
                        <tr>
                            <td><center><%=rs.getString("idTemas")%></center></td>
                            <td><center><%=rs.getString("Nombre_Tema")%></center></td>
                            <td><center><%=rs.getString("Codigo_Material")%></center></td>
                        </tr>
                        <%
                            }
                            conexion.close();
                        %>
                    </tbody>
                    </table>
                </div>
                
                <div class="row col-md-8" style="position: relative; top: 38px; left: 610px; width: 80%">
                    <form action="ingresar.jsp" method="POST">
                        <fieldset style="background-color: #c0c0c0; border: 3px solid white; width: 386px; height: 310px;">
                           
                            <legend align="center" style="float: right; border: 2px solid white; "> Temas</legend>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <br>
                                    &nbsp
                                    <b><label for="nombre"> Tema: </label></b>
                                     <div align="center" class="input-group">
                                        <input  type="text" class="form-control" id="nombre" name="nombre"
                                       placeholder="Ingresa el tema del material"   style="font-family: Comic Sans MS;   width:310px; ">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-pencil">                                
                                            </span>
                                        </span>
                                    </div>
                                    <br>
                                    <div align="center" class="input-group">
                                        <textarea type="text" class="form-control" id="autor" name="autor" style="width:350px;"></textarea>
                                    </div>
                                </div>
                            </div>

                            <table align="center" class="form-group col-md-12">
                                    <tr>
                                        <td align="center">
                                            <br><button type="button" class="btn btn-primary">Añadir</button>
                                        </td>
                                        <td align="center">
                                            <br><button type="button" class="btn btn-warning">Modificar</button>
                                        </td>
                                        <td align="center">
                                            <br><button type="button" class="btn btn-danger">Eliminar</button>
                                        </td>
                                    </tr>
                            </table>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>

        <!--codigo del footer-->
        <%@include file="Estructura_plantilla/footer.jsp"%>
    </body>
</html>