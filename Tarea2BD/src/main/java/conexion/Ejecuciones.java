/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Josue
 */
public class Ejecuciones {
    public void BorrarTablas(){
        try{
            String execute = "EXECUTE SP_BorrarTablas";
            PreparedStatement sql = Conexion.getConexion().prepareStatement(execute);

            sql.executeQuery();
            }
        catch(SQLException ex){

        }
    }
    
}
