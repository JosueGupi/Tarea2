+<%-- 
    Document   : cambios
    Created on : 16 sep 2021, 15:09:21
    Author     : oscfr
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Verificacion cambios</title>
    </head>
    <body>
        <%
                String date1 = request.getParameter("fecha1");
                String date2 = request.getParameter("fecha2");
                String objetivo = request.getParameter("obje");
                String descripcion = request.getParameter("desc");
                //out.println("<p>Se editó la cuenta <a href='index.html'>Salir</a></p>");
        %>
    </body>
</html>