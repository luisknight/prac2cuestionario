package pojos;
// Generated 03-feb-2015 10:51:54 by Hibernate Tools 4.3.1



/**
 * Examen generated by hbm2java
 */
public class Examen  implements java.io.Serializable {


     private Integer idExamen;
     private double puntaje;

    public Examen() {
    }

    public Examen(double puntaje) {
       this.puntaje = puntaje;
    }
   
    public Integer getIdExamen() {
        return this.idExamen;
    }
    
    public void setIdExamen(Integer idExamen) {
        this.idExamen = idExamen;
    }
    public double getPuntaje() {
        return this.puntaje;
    }
    
    public void setPuntaje(double puntaje) {
        this.puntaje = puntaje;
    }




}

