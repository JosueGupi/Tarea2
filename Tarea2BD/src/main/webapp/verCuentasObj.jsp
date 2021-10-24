<%-- 
    Document   : verCuentasObj
    Created on : 23 oct 2021, 16:19:01
    Author     : oscfr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 id="titulo" >Menu cuentas objetivo</h1>
        <form action ="desactivarCuenta.jsp"/>
        <div class="content-select">
	<select name = "NumeroCuentas">
		<option>Sin seleccionar...</option>
		<%
                    
                %>
	</select>
	<i></i>
        </div>
        &nbsp
        &nbsp
            <input class= "boton" type="submit" value="Desactivar cuenta">
        </form>
        
        
        &nbsp
        &nbsp
        
        <form action =editarCuenta.jsp"/>
        <div class="content-select">
	<select name = VerCuentasObj">
		<option>Sin seleccionar...</option>
		<%
                    
                %>
	</select>
	<i></i>
        </div>
        &nbsp
        &nbsp
            <input class= "boton" type="submit" value="Editar">
        </form>
        &nbsp
        &nbsp
        <form action ="agregarCuentas.jsp"/>
            <input class= "boton" type="submit" value="Agregar">
        </form>
    </body>
</html>
