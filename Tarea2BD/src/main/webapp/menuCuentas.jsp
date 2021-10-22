<%-- 
    Document   : menuCuentas
    Created on : 17 sep 2021, 9:52:56
    Author     : oscfr
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
        <title>Menu estados de Cuenta</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="content-select">
        <form action ="consulCuenta.jsp"/>
	<select name = "EstadosCuenta">
		<option>Sin seleccionar...</option>
		<%  
                    ArrayList<String> estadosC = new ArrayList();
                    int IdCuenta = Integer.parseInt(request.getParameter("NumeroCuentas"));
                    String select = "SELECT * FROM dbo.EstadoCuenta WHERE IdCuenta = ?";
                    PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                    sql.setInt(1, IdCuenta);
                    ResultSet resultado = sql.executeQuery();
                    while(resultado.next()){
                        estadosC.add(resultado.getInt("Id")+" "+
                                resultado.getInt("IdCuenta")+" "+
                                resultado.getString("FechaInicio")+" "+
                                resultado.getString("FechaFin")+" "+
                                resultado.getInt("SaldoInicio")+" "+
                                resultado.getInt("SaldoFin")+" "+
                                resultado.getInt("OperacionesAtm")+" "+
                                resultado.getInt("OperacionesPersona")+" "+
                                resultado.getInt("SaldoMinimo"));
                        
                    }
                    int indice = estadosC.size()-1;
                    while(indice >= 0){
                        
                        String[] partes = estadosC.get(indice).split(" ");
                        
                        out.println("<option value = \""+partes[0]+
                                " "+partes[2]+
                                " "+partes[4]+
                                " "+partes[5]+
                                " "+partes[6]+
                                " "+partes[7]+
                                " "+partes[8]+
                                "\">"+partes[2]+"</option>");
                        indice--;
                    }
                
                %>
	</select>
	<i></i>
        </div>
        &nbsp
        &nbsp
        

            <input class= "boton" type="submit" value="Consultar cuenta">

        </form>
    </body>
</html>
