<%-- 
    Document   : consulCuenta
    Created on : 17 sep 2021, 11:42:05
    Author     : oscfr
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Info. Cuentas Objetivo</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%
            String datosEC = request.getParameter("EstadosCuenta");
            String[] partes = datosEC.split(" ");
            int IdEC = Integer.parseInt(partes[0]);
        %>
        <p>Fecha: 
           <% 
            out.println(partes[1]);
               %>
           Saldo Mínimo: 
           <% 
           out.println(partes[6]);
               %>
           Saldo Inicial: 
           <% 
            out.println(partes[2]);
               %>
           Saldo Final: 
           <% 
            out.println(partes[3]);
               %>
           Cantidad OP ATM: 
           <% 
            out.println(partes[4]);
               %>
           Cantidad OP Humano: 
            <% 
            out.println(partes[5]);
               %>
        </p>
        <table class="styled-table">
            <thead>
                <tr>
                    <th>Fecha</th>
                    <th>Tipo de cambio Aplicado(Compra/Venta)</th>
                    <th>Monto en moneda de Movimiento</th>
                    <th>Monto en moneda de la cuenta</th>
                    <th>Descripción</th>
                    <th>Nuevo Saldo</th>
                </tr>
            </thead>
            <tbody>
                
                <%
                    String select = "EXEC SP_ObtenerMovimientos ?,?";
                    PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                    sql.setInt(1, IdEC);
                    sql.setInt(2, 0);
                    ResultSet resultado = sql.executeQuery();
                    
                    while(resultado.next()){
                        int IdCambio = resultado.getInt("IdCambio");
                        int monto = 0;
                        
                        String select2 = "SELECT * FROM dbo.TipoCambio WHERE Id = ?";
                        PreparedStatement sql2 = Conexion.getConexion().prepareStatement(select2);
                        sql2.setInt(1,IdCambio);
                        ResultSet resultado2 = sql2.executeQuery();
                        resultado2.next();
                        
                        if(IdCambio == 1 || IdCambio == 2){
                            monto = resultado.getInt("Monto");
                        }
                        else{
                            if(resultado.getInt("IdMoneda") == 2){
                                monto = resultado.getInt("Monto")/resultado2.getInt("Compra");
                            }else{
                                monto = resultado.getInt("Monto")*resultado2.getInt("Venta");
                            }
                        }
                        
                        out.println("<tr>"
                                + "<td>"+resultado.getString("Fecha")+"</td>"
                                + "<td>"+resultado2.getInt("Compra")+"/"+resultado2.getInt("Venta")+"</td>"
                                + "<td>"+monto+"</td>"
                                + "<td>"+resultado.getInt("Monto")+"</td>"
                                + "<td>"+resultado.getString("Descripcion")+"</td>"
                                + "<td>"+resultado.getString("NuevoSaldo")+"</td>"
                                +"</tr>");
                    }
                
                %>
            </tbody>
        </table>
        <%
            out.println("<p>Se consultó la cuenta <a href='index.html'>Salir</a></p>");
        %>
    </body>
</html>
