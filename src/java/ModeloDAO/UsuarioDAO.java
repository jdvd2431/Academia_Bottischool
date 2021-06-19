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
    private String  usuId = "", correo = "", clave = "";
    private String nombre= "", apellido= "",tipoDocumento= "",numDocumento= "",tipoUsuario= "",celular= "",telefono= "",estado= "";

       public UsuarioDAO(UsuarioVO usuVO) {
        super();
        try {
            conexion = this.obtenerConexion();
            usuId = usuVO.getUsuId();
            nombre =usuVO.getNombre();
            nombre =usuVO.getApellido();
            nombre =usuVO.getTipoDocumento();
            nombre =usuVO.getNumDocumento();
            nombre =usuVO.getTipoUsuario();
            nombre =usuVO.getCelular();
            nombre =usuVO.getCelular();
            correo = usuVO.getCorreo();
            clave = usuVO.getClave();
            nombre =usuVO.getEstado();
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }
       
    @Override
    public boolean agregarRegistro() {
      try {
            sql = "insert into usuario("
                    + "idUsuario,"
                    + "nombre,"
                    + "apellido,"
                    + "tipoDocumento,"
                    + "numDocumento,"
                    + "tipoUsuario,"
                    + "celular,"
                    + "telefono,"
                    + "correo,"
                    + "clave,"
                    + "estado)"
                    + " values(?,?,?,?,?,?,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, usuId);
            puente.setString(2, nombre);
            puente.setString(3, apellido);
            puente.setString(4, tipoDocumento);
            puente.setString(5, numDocumento);
            puente.setString(6, tipoUsuario);
            puente.setString(7, celular);
            puente.setString(8, telefono);
            puente.setString(9, correo);
            puente.setString(10, clave);
            puente.setString(11, estado);
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
