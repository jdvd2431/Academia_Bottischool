/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.AsistenciaVO;
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
 * @author David
 */
public class AsistenciaDAO extends Conexion implements Crud{

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion = false;
    
    private String sql;
    
     private String  idAsistencia = "", asistencia = "", fecha = "", idUsuario = "", idNovedad = "";
     
      public AsistenciaDAO(AsistenciaVO AsisVO){
     
         super();
        try {
            conexion = this.obtenerConexion();
            idAsistencia = AsisVO.getIdAsistencia();
            asistencia =AsisVO.getAsistencia();
            fecha =AsisVO.getFecha();
            idUsuario =AsisVO.getIdUsuario();
            idNovedad =AsisVO.getIdNovedad();
        } catch (Exception e) {
            Logger.getLogger(AsistenciaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
     }
    
    @Override
    public boolean agregarRegistro() {
       
         try {
            sql = "insert into asistencia("
                    + "idAsistencia,"
                    + "asistencia,"
                    + "fecha,"
                    + "idUsuario,"
                    + "idNovedad)"
                    + " values(?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idAsistencia);
            puente.setString(2, asistencia);
            puente.setString(3, fecha);
            puente.setString(4, idUsuario);
            puente.setString(5, idNovedad);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(AsistenciaDAO.class.getName()).log(Level.SEVERE, null, e);
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
