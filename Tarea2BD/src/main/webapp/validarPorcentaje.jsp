<%-- 
    Document   : validarPorcentaje
    Created on : 19/09/2021, 06:21:57 PM
    Author     : Josue
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int idCuenta = (int)request.getAttribute("IdCuenta");
            String select = "SELECT Porcentaje FROM dbo.Beneficiarios WHERE IdCuenta = ? AND Activo = 1";
            PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
            sql.setInt(1, idCuenta);
            ResultSet respuesta = sql.executeQuery();
            int total = 0;
            while(respuesta.next()){
                total += respuesta.getInt("Porcentaje");
            }
            if(total != 100){
                out.println("<p>Los beneficiarios no suman 100% <a href='index.html'>Regresar</a></p>");
            }
            else{
                out.println("<p>Los beneficiarios suman 100% <a href='index.html'>Regresar</a></p>");
            }
        %>
    </body>
</html>
