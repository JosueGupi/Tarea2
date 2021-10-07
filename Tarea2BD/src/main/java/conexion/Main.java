/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Josue
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            // TODO code application logic here
            Statement sql = Conexion.getConexion().createStatement();
            String select = "SELECT name FROM master.dbo.sysdatabases";
            ResultSet resultado = sql.executeQuery(select);
            
            while(resultado.next()){
                System.out.println(resultado.getString(1));
            }
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
    }
    
}
