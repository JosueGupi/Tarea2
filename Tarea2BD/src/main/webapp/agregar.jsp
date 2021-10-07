<%-- 
    Document   : agregar
    Created on : 16 sep 2021, 15:12:48
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
        <link rel="stylesheet" href="style.css">
        <title>Agregar</title>
    </head>
    <body>
        <%
            try{
                String datos = (String)request.getParameter("Parentezco");
                System.out.println(datos);
                String[] partes = datos.split(" ");
                String parentezco = partes[0];
                String cuenta = partes[1];
                String nombre = request.getParameter("nombre");
                int porcentaje =Integer.parseInt(request.getParameter("porcentaje"));
                String date = request.getParameter("fecha");
                int tipoDoc = Integer.parseInt(request.getParameter("TipoDocIdentidad"));
                String cedula =request.getParameter("cedula");
                String email = request.getParameter("email");
                String tele1 = request.getParameter("tel1");
                String tele2 = request.getParameter("tel2");

                String select = "SELECT Id FROM dbo.Cuentas WHERE NumeroCuenta = ?";
                PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                sql.setString(1, cuenta);
                ResultSet resultado = sql.executeQuery();
                resultado.next();
                int idCuenta = resultado.getInt("Id");

                try{
                    select = "EXEC SP_InsertarBeneficiario ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?";
                    PreparedStatement sql2 = Conexion.getConexion().prepareStatement(select);
                    sql2.setInt(1, tipoDoc);
                    sql2.setString(2, nombre);
                    sql2.setInt(3, porcentaje);
                    sql2.setString(4,parentezco);
                    sql2.setString(5,date);
                    sql2.setString(6,cedula);
                    sql2.setString(7, email);
                    sql2.setString(8, tele1);
                    sql2.setString(9, tele2);
                    sql2.setInt(10,idCuenta);
                    sql2.setInt(11, 0);
                    ResultSet resultado2 = sql2.executeQuery();
                    resultado2.next();
                    System.out.println(resultado2.getInt(1));
                    if(resultado2.getInt(1) == 1){
                        response.sendRedirect("tresBeneficiarios.jsp");
                    }
                    else{
                        request.setAttribute("IdCuenta", new Integer(idCuenta));
                        request.getRequestDispatcher("validarPorcentaje.jsp").forward(request, response);
                    }
                }
                catch(SQLException ex){
                    request.setAttribute("IdCuenta", new Integer(idCuenta));
                    request.getRequestDispatcher("validarPorcentaje.jsp").forward(request, response);
                }
                
            }catch(SQLException ex){
                
            }
            
        %>
    </body>
</html>
