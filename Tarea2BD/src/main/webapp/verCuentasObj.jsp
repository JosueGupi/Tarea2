<%-- 
    Document   : verCuentasObj
    Created on : 23 oct 2021, 16:19:01
    Author     : oscfr
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h1 id="titulo" >Menu cuentas objetivo</h1>
        <form action ="desactivarCuenta.jsp"/>
        <div class="content-select">
	<select name = "NumeroCuentas">
		<option>Sin seleccionar...</option>
		<%  
                    
                    ArrayList<String> cuentasObj = new ArrayList();
                    int IdCuenta = Integer.parseInt(request.getParameter("VerCuentasObj"));
                    String select = "SELECT Id, Descripcion FROM dbo.CuentasObjetivo WHERE IdCuenta = ? AND Activo = ?";
                    PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                    sql.setInt(1, IdCuenta);
                    sql.setInt(2,1);
                    ResultSet resultado = sql.executeQuery();
                    while(resultado.next()){
                        cuentasObj.add(resultado.getInt("Id")+" "+resultado.getString("Descripcion"));
                        
                    }
                    for(int i = 0; i < cuentasObj.size(); i++){
                        String[] partes = cuentasObj.get(i).split(" ");
                        out.println("<option value = "+partes[0]+">"+partes[1]+"</option>");
                    }
                    
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
        
        <form action = "editarCuenta.jsp"/>
        <div class="content-select">
	<select name = "VerCuentasObj">
		<option>Sin seleccionar...</option>
		<%
                    for(int i = 0; i < cuentasObj.size(); i++){
                        String[] partes = cuentasObj.get(i).split(" ");
                        out.println("<option value = "+partes[0]+">"+partes[1]+"</option>");
                    }
                    
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
        <%
            out.println("<input type='hidden' name='cuenta' value="+IdCuenta+">");
        %>
            <input class= "boton" type="submit" value="Agregar">
        </form>
        
    </body>
</html>
