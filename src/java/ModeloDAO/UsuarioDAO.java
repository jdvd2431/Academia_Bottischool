/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.UsuarioVO;
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
public class UsuarioDAO extends Conexion implements Crud{
   
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion = false;
    private String sql;
    private String usuId = "", correo = "", clave = "";

       public UsuarioDAO(UsuarioVO usuVO) {
        super();
        try {
            conexion = this.obtenerConexion();
            usuId = usuVO.getUsuId();
            correo = usuVO.getCorreo();
            clave = usuVO.getClave();
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }
       
    @Override
    public boolean agregarRegistro() {
      try {
            sql = "insert into usuario(correo,clave) values(?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, correo);
            puente.setString(2, clave);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
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
    
    public boolean iniciarSesion(String correo, String clave){
            
        try{
            
            conexion=this.obtenerConexion();
            sql="SELECT * FROM usuario WHERE correo=? AND clave=?";
           puente = conexion.prepareStatement(sql);
           puente.setString(1, correo);
           puente.setString(2, clave);
           mensajero= puente.executeQuery();
           if(mensajero.next()){
               operacion=true;
           }
        }catch(SQLException e){
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
            }
        }
        return operacion;
    }
    
}
