/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.AulaVO;
import ModeloVO.ClaseVO;
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
public class ClaseDAO extends Conexion implements Crud{
       
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion = false;
    
    private String sql;
    
    private String  idClase = "", nombre = "", estado = "";
    
    public ClaseDAO(ClaseVO claVO){
     
         super();
        try {
            conexion = this.obtenerConexion();
            idClase = claVO.getIdClase();
            nombre =claVO.getNombre();
            estado =claVO.getEstado();
        } catch (Exception e) {
            Logger.getLogger(ClaseDAO.class.getName()).log(Level.SEVERE, null, e);
        }
     }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "insert into clase("
                    + "idClase,"
                    + "nombre,"
                    + "estado)"
                    + " values(?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idClase);
            puente.setString(2, nombre);
            puente.setString(3, estado);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(ClaseDAO.class.getName()).log(Level.SEVERE, null, e);
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
