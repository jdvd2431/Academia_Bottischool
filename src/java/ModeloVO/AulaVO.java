/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

public class AulaVO {
    private String idAula, capacidad, nombre, idGrupo;

    public AulaVO() {
    }

    public AulaVO(String idAula, String capacidad, String nombre, String idGrupo) {
        this.idAula = idAula;
        this.capacidad = capacidad;
        this.nombre = nombre;
        this.idGrupo = idGrupo;
    }

    public String getIdAula() {
        return idAula;
    }

    public void setIdAula(String idAula) {
        this.idAula = idAula;
    }

    public String getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(String capacidad) {
        this.capacidad = capacidad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getIdGrupo() {
        return idGrupo;
    }

    public void setIdGrupo(String idGrupo) {
        this.idGrupo = idGrupo;
    }
    
}
