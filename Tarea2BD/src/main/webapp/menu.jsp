<%-- 
    Document   : menu
    Created on : 01/09/2021, 09:29:12 AM
    Author     : Josue
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
        <title>Menu</title>
        <link rel="stylesheet" href="style.css">
    </head>
    
    <body>
        <h1 id="titulo" >Bienvenido usuario</h1>
        
        <div class="content-select">
        <form action ="menuCuentas.jsp"/>
	<select name = "NumeroCuentas">
		<option>Seleccione una cuenta...</option>
		<%
                    /*int idCuenta = (int)request.getAttribute("IdCuenta");
                    String select = "SELECT NumeroCuenta FROM dbo.Cuentas WHERE Id = ?";
                    PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                    sql.setInt(1, idCuenta);
                    ResultSet resultado = sql.executeQuery();
                    
                    while(resultado.next()){
                        String numeroCuenta = resultado.getString("NumeroCuenta");
                        out.println("<option value = "+numeroCuenta+">"+numeroCuenta+"</option>");
                    }*/
                
                %>
	</select>
	<i></i>
        </div>
        &nbsp
        &nbsp
        
            
            <input class= "boton" type="submit" value="Ver Estados de Cuenta">

        </form>
    </body>
</html>
