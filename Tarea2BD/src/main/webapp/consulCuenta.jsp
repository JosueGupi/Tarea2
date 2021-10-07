<%-- 
    Document   : consulCuenta
    Created on : 17 sep 2021, 11:42:05
    Author     : oscfr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Info. Cuentas</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%
        /* 
            Datos de la cuenta
            o
            out.println("<p>No existen cuentas que consultar <a href='index.html'>Volver al inicio</a></p>");

            */
        %>
        <p>Fecha: 
           <% 
            /* 
            Logica Fecha
            */
               %>
           Saldo Mínimo: 
           <% 
            /* 
            Logica Saldo Mínimo
            */
               %>
           Saldo Final: 
           <% 
            /* 
            Logica Saldo Final
            */
               %>
           Cantidad OP ATM: 
           <% 
            /* 
            Logica Cantidad OP ATM
            */
               %>
           Cantidad OP Humano: 
        <% 
            /* 
            Logica Cantidad OP Humano
            */
               %>
        </p>
        <table class="styled-table">
            <thead>
                <tr>
                    <th>Fecha</th>
                    <th>Tipo de cambio Aplicado</th>
                    <th>Monto en moneda de Movimiento</th>
                    <th>Monto en moneda de la cuanta</th>
                    <th>Descripción</th>
                    <th>Nuevo Saldo</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Hoy</td>
                    <td>Prueba</td>
                    <td>$15</td>
                    <td>CRC 6000</td>
                    <td>Paga Cena</td>
                    <td>CRC 634000</td>
                </tr>
                <tr>
                    <td>Ayer</td>
                    <td>Prueba</td>
                    <td>$1600</td>
                    <td>CRC 746000</td>
                    <td>Paga Fin de mes</td>
                    <td>CRC 1534000</td>
                </tr>
            </tbody>
        </table>
        <%
            /* 
            NOTA: EL OUT.PRINTLN DEBERIA DEVOLVER A menuCuentas.jsp NO A index.html
            */
            out.println("<p>Se consultó la cuenta <a href='index.html'>Salir</a></p>");
        %>
    </body>
</html>
