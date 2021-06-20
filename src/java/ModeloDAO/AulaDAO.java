/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.AulaVO;
import Util.Conexion;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sebas
 */
public class AulaDAO extends Conexion implements Crud{
    
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion = false;
    
    private String sql;
    
     private String  idAula = "", capacidad = "", nombre = "", idGrupo = "";
     
     public AulaDAO(AulaVO auVO){
     
         super();
        try {
            conexion = this.obtenerConexion();
            idAula = auVO.getIdAula();
            capacidad =auVO.getCapacidad();
            nombre =auVO.getNombre();
            idGrupo =auVO.getIdGrupo();
        } catch (Exception e) {
            Logger.getLogger(AulaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
     }
   
    @Override
    public boolean agregarRegistro() {
    
        try {
            sql = "insert into aula("
                    + "idAula,"
                    + "capacidad,"
                    + "nombreAula,"
                    + "idGrupo)"
                    + " values(?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idAula);
            puente.setString(2, capacidad);
            puente.setString(3, nombre);
            puente.setString(4, idGrupo);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(AulaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean cambiarEstado() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
      
}
