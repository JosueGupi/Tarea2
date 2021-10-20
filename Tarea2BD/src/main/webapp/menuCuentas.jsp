<%-- 
    Document   : menuCuentas
    Created on : 17 sep 2021, 9:52:56
    Author     : oscfr
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="conexion.Conexion"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu estados de Cuenta</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="content-select">
	<select>
		<option>Sin seleccionar...</option>
		<%

                
                %>
	</select>
	<i></i>
        </div>
        &nbsp
        &nbsp
        <form action ="consulCuenta.jsp"/>

            <input class= "boton" type="submit" value="Consultar cuenta">

        </form>
    </body>
</html>
