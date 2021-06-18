/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;


public class NovedadVO {
    private String idNovedad, descripcion;

    public NovedadVO() {
    }

    public NovedadVO(String idNovedad, String descripcion) {
        this.idNovedad = idNovedad;
        this.descripcion = descripcion;
    }

    public String getIdNovedad() {
        return idNovedad;
    }

    public void setIdNovedad(String idNovedad) {
        this.idNovedad = idNovedad;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
}
