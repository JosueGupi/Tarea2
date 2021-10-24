<%-- 
    Document   : editarCuenta
    Created on : 23 oct 2021, 17:09:04
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
        <form action ="logicaEditar.jsp"/>
            <p>Descripción: <input type="text" name="desc" required/></p>       
            <input class= "boton" type="submit" value="Guardar Cambios">
            
        </form>
    </body>
</html>
