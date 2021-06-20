/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;
import ModeloVO.GrupoVO;
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
 * @author Julian
 */
public class GrupoDAO extends Conexion implements Crud{
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion = false;
    private String sql;
    private  String idGrupo="", estado="",  fechaInicio="",  fechaFin="";
        public GrupoDAO(GrupoVO grupoVO) {
        super();
        try {
            conexion = this.obtenerConexion();
            idGrupo = grupoVO.getIdGrupo();
            estado =grupoVO.getEstado();
            fechaInicio =grupoVO.getFechaInicio();
            fechaFin =grupoVO.getFechaFin();
            
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }
    @Override
    public boolean agregarRegistro() {
         try {
           sql ="INSERT INTO `grupo` (`idGrupo`, `estado`, `fechaInicio`, `fechaFin`) VALUES (?,?,?,?)";
           puente = conexion.prepareStatement(sql);
            puente.setString(1, idGrupo);
            puente.setString(2, estado);
            puente.setString(3, fechaInicio);
            puente.setString(4, fechaFin);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(GrupoDAO.class.getName()).log(Level.SEVERE, null, e);
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
