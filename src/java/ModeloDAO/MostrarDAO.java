/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.AsistenciaVO;
import Util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author David
 */
public class MostrarDAO extends Conexion{
    
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    private String sql;
    
    public  ArrayList<AsistenciaVO> listar(){
        
        ArrayList<AsistenciaVO>listaAsistencia = new ArrayList<>();
        
        
        try {
            conexion= this.obtenerConexion();
            sql="SELECT grupo_usuario.idUsuario, "
                    + "grupo_usuario.idGrupo, usuario.nombre,usuario.apellido"
                    + " FROM asistencia INNER JOIN grupo ON asistencia.idGrupo=grupo.idGrupo"
                    + " INNER JOIN grupo_usuario ON grupo_usuario.idGrupo=grupo.idGrupo "
                    + "INNER JOIN usuario ON usuario.idUsuario=grupo_usuario.idUsuario "
                    + "INNER JOIN tipousuario ON tipousuario.idTipoUsuario=usuario.idTipoUsuario "
                    + "WHERE tipousuario.idTipoUsuario=?;";
           
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
               AsistenciaVO AsiVO = new AsistenciaVO(mensajero.getString(1), 
                       mensajero.getString(2));
                
                   listaAsistencia.add(AsiVO);
            }
        
        } catch (Exception e) {
              Logger.getLogger(MostrarDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
              Logger.getLogger(MostrarDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaAsistencia;
        
    
    }
    
    
    
}
