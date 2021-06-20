/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.HorarioVO;
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
public class HorarioDAO extends Conexion implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    private String idHorario = "", fechaInicio = "", fechaFin = "", horaInicio = "", horaFin = "", dia = "", estado = "",idAula="";

    public HorarioDAO(HorarioVO horarioVO) {
        super();
        try {
            conexion = this.obtenerConexion();
            idHorario = horarioVO.getIdHorario();
            fechaInicio = horarioVO.getFechaInicio();
            fechaFin = horarioVO.getFechaFin();
            horaInicio = horarioVO.getHoraInicio();
            horaFin = horarioVO.getHoraFin();
            dia = horarioVO.getDia();
            estado = horarioVO.getEstado();
            idAula=horarioVO.getIdAula();

        } catch (Exception e) {
            Logger.getLogger(HorarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        try{
        sql = "INSERT INTO `horario` (`idHorario`, `fechaInicio`, `fechaFin`, `horaInicio`, `horaFin`, `dia`, `estado`, `idAula`) VALUES (?,?,?,?,?,?,?,?)";
        puente = conexion.prepareStatement(sql);
            puente.setString(1, idHorario);
            puente.setString(2, fechaInicio);
            puente.setString(3, fechaFin);
            puente.setString(4, horaInicio);
            puente.setString(5, horaFin);
            puente.setString(6, dia);
            puente.setString(7, estado);
            puente.setString(8, idAula);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(HorarioDAO.class.getName()).log(Level.SEVERE, null, e);
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
