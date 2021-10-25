<%-- 
    Document   : desactivarCuenta
    Created on : 20 oct 2021, 16:46:28
    Author     : oscfr
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Desactivar Cuenta</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%
            try{
                int IdCuenta = Integer.parseInt(request.getParameter("NumeroCuentas"));
                String select = "EXEC SP_DesactivarCuentaObjetivo ?, ?";
                PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                sql.setInt(1, IdCuenta);
                sql.setInt(2, 0);
                sql.executeQuery();
                out.println("<p>Se desactivó la cuenta <a href='index.html'>Salir</a></p>");
            }catch(Exception e){
                out.println("<p>Se desactivó la cuenta <a href='index.html'>Salir</a></p>");
            }

           
        %>
    </body>
</html>
