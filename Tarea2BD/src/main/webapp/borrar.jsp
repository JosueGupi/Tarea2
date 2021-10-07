<%-- 
    Document   : borrar
    Created on : 16 sep 2021, 16:28:04
    Author     : oscfr
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar Beneficiario</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%
            try{
                String NombreCedula = (String)request.getParameter("Beneficiarios");
                System.out.println(NombreCedula);
                String[] partes = NombreCedula.split(" ");
                String cedula = partes[3];
                String cuenta = partes[4];

                String select = "SELECT Id FROM dbo.Cuentas WHERE NumeroCuenta = ?";
                PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                sql.setString(1,cuenta);
                ResultSet resultado = sql.executeQuery();
                resultado.next();
                int IdCuenta = resultado.getInt("Id");

                try{
                    select = "EXECUTE SP_EliminarBeneficiario ?, ?, ?";
                    PreparedStatement sql2 = Conexion.getConexion().prepareStatement(select);
                    sql2.setString(1, cedula);
                    sql2.setInt(2, IdCuenta);
                    sql2.setInt(3, 0);
                    ResultSet resultado2 = sql2.executeQuery();
                }catch(SQLException ex){
                    request.setAttribute("IdCuenta", new Integer(IdCuenta));
                    request.getRequestDispatcher("menu.jsp").forward(request, response);
                } 
            }
            catch(SQLException ex){
                
                
            }
            
           
            
        %>
    </body>
</html>
