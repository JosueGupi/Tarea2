<%-- 
    Document   : login
    Created on : 31/08/2021, 08:21:12 PM
    Author     : Josue
--%>

<%@page import="conexion.Ejecuciones"%>
<%@page import="java.sql.*"%>

<%@page import="conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Verificacion</title>
    </head>
    <body>
        <%
            try{
                
                String user = request.getParameter("usuario");
                String password = request.getParameter("contraseña");
                
                /*String execute = "EXECUTE SP_ValidarUsuario ?,?,?";

                PreparedStatement sql = Conexion.getConexion().prepareStatement(execute);               
                sql.setString(1, user);
                sql.setString(2, password);
                sql.setInt(3, 0);
                
                ResultSet resultado = sql.executeQuery();
            
                resultado.next();*/
                
                if(user.equals("admin") && password.equals("admin")){
                    
                    response.sendRedirect("menu.jsp");
                }
                else{
                    out.println("<p>Usuario No Registrado <a href='index.html'>Intente de nuevo</a></p>");
                }
            }
            catch(Exception ex){
                
                out.println("<p>Usuario No Registrado <a href='index.html'>Intente de nuevo</a></p>");
                System.out.println(ex);
            }
        %>
    </body>
</html>
