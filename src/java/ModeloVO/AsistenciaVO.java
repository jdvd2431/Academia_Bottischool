/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;


public class AsistenciaVO {
   private  String idAsistencia, asistencia, fecha, idUsuario,idNovedad;

    public AsistenciaVO() {
    }

    public AsistenciaVO(String idAsistencia, String asistencia, String fecha, String idUsuario, String idNovedad) {
        this.idAsistencia = idAsistencia;
        this.asistencia = asistencia;
        this.fecha = fecha;
        this.idUsuario = idUsuario;
        this.idNovedad = idNovedad;
    }

    public String getIdAsistencia() {
        return idAsistencia;
    }

    public void setIdAsistencia(String idAsistencia) {
        this.idAsistencia = idAsistencia;
    }

    public String getAsistencia() {
        return asistencia;
    }

    public void setAsistencia(String asistencia) {
        this.asistencia = asistencia;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(String idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getIdNovedad() {
        return idNovedad;
    }

    public void setIdNovedad(String idNovedad) {
        this.idNovedad = idNovedad;
    }

  
   
   
}
