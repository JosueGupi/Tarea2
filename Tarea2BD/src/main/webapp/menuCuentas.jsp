<%-- 
    Document   : menuCuentas
    Created on : 17 sep 2021, 9:52:56
    Author     : oscfr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Cuentas</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="content-select">
	<select>
		<option>Cuenta 1</option>
		<option>Cuenta 2</option>
		<option>Cuenta 3</option>
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
