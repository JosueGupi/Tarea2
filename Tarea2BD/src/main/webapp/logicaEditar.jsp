<%-- 
    Document   : logicaEditar
    Created on : 23 oct 2021, 17:08:23
    Author     : oscfr
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar guardar</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%  try{
            

                int IdCuenta = Integer.parseInt(request.getParameter("cuenta"));
                String descripcion = request.getParameter("desc");

                String select = "EXEC SP_ActualizarCuentaObjetivo ?, ?, ?";
                PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                sql.setInt(1, IdCuenta);
                sql.setString(2, descripcion);
                sql.setInt(3,0);
                sql.executeQuery();
                out.println("<p>Se desactivó la cuenta <a href='index.html'>Salir</a></p>");
            }
        catch(Exception e){
            out.println("<p>Se desactivó la cuenta <a href='index.html'>Salir</a></p>");
        }
            
        %>
    </body>
</html>
