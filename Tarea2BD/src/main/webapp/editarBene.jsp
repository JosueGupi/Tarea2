<%-- 
    Document   : editarBene
    Created on : 16 sep 2021, 14:27:45
    Author     : oscfr
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Beneficiario</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <form action ="cambios.jsp"/>
            <p>Nombre: <input type="text" name="nombre" required/></p>
            <p>Porcentaje: <input type="number" min="1" max="100" name="porcentaje" required/></p>
            <select name = "Parentezco">
            <%
                String NombreCedula = (String)request.getParameter("Beneficiarios2");
                String[] partes = NombreCedula.split(" ");
                String cedulaVieja = partes[1];
                String NumeroCuenta = partes[2];
                String select = "SELECT Nombre FROM dbo.Parentezcos";
                PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                ResultSet resultado = sql.executeQuery();
                while(resultado.next()){
                    out.println("<option value =\""+resultado.getString("Nombre")+" "+cedulaVieja+" "+NumeroCuenta+"\">"+resultado.getString("Nombre")+"</option>");
                }
            %>
            </select>
            
            <p>Fecha de nacimiento: <input type="date" name="fecha" required/></p>
            <p>Cédula: <input type="number" name="cedula" required/></p>
            <p>Email: <input type="email" name="email" required/></p>

            <p> Formato Teléfono: 12341234 </>

            <p>Telefono 1: <input type="text" name="tel1" required/></p>
            <p>Telefono 2: <input type="text" name="tel2" required/></p>
            
            
            <input class= "boton" type="submit" value="Guardar Cambios">
            
        </form>
    </body>
</html>
