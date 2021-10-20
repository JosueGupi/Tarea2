<%-- 
    Document   : agregarCuentas
    Created on : 20 oct 2021, 15:15:40
    Author     : oscfr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Agregar cuenta</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <form action ="cambios.jsp"/>

            <p>Fecha de nacimiento: <input type="date" name="fecha1" required/></p>
            <p>Fecha de nacimiento: <input type="date" name="fecha2" required/></p>

            <p>Descripción: <input type="text" name="desc" required/></p>
            
            
            <input class= "boton" type="submit" value="Guardar Cambios">
            
        </form>
    </body>
</html>
