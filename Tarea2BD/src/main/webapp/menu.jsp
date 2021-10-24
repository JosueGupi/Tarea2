<%-- 
    Document   : menu
    Created on : 01/09/2021, 09:29:12 AM
    Author     : Josue
--%>

<%@page import="java.util.ArrayList"%>
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
        <form action ="menuCuentas.jsp"/>
        <div class="content-select">
	<select name = "NumeroCuentas">
		<option>Sin seleccionar...</option>
		<%
                    ArrayList<Integer> cuentas = new ArrayList();
                    ArrayList<String> numCuentas = new ArrayList();
                    
                    int idUsuario = (int)request.getAttribute("IdUsuario");
                    String select = "SELECT IdCuenta FROM dbo.UsuariosPuedeVer WHERE IdUsuarios = ?";
                    PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                    sql.setInt(1, idUsuario);
                    ResultSet resultado = sql.executeQuery();
                    while(resultado.next()){
                        cuentas.add(resultado.getInt("IdCuenta"));
                    }
                    
                    for(int i = 0; i < cuentas.size();i++){
                        int IdCuenta = cuentas.get(i);
                        String select2 = "SELECT Id,NumeroCuenta FROM dbo.Cuentas WHERE Id = ?";
                        PreparedStatement sql2 = Conexion.getConexion().prepareStatement(select2);
                        sql2.setInt(1, IdCuenta);
                        ResultSet resultado2 = sql2.executeQuery();
                        resultado2.next();
                        numCuentas.add(resultado2.getInt("Id")+"-"+resultado2.getString("NumeroCuenta"));
                    }
                    for(int j = 0; j<numCuentas.size();j++){
                        String[] partes = numCuentas.get(j).split("-");
                        out.println("<option value = "+partes[0]+">"+partes[1]+"</option>");
                    }
                
                %>
	</select>
	<i></i>
        </div>
        &nbsp
        &nbsp
            <input class= "boton" type="submit" value="Ver estados de cuenta">
        </form>
        
        
        &nbsp
        &nbsp
        
        <form action ="verCuentasObj.jsp"/>
        <div class="content-select">
	<select name = "VerCuentasObj">
		<option>Sin seleccionar...</option>
		<%
                    for(int j = 0; j<numCuentas.size();j++){
                        String[] partes = numCuentas.get(j).split("-");
                        out.println("<option value = "+partes[0]+">"+partes[1]+"</option>");
                    }
                %>
	</select>
	<i></i>
        </div>
        &nbsp
        &nbsp
            <input class= "boton" type="submit" value="Ver cuentas objetivo">
        </form>
        &nbsp
        &nbsp
        
    </body>
</html>
