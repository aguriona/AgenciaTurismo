
package modelo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import javax.persistence.Table;

@Entity
@Table(name = "paquete_turistico")
public class PaqueteTuristico implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
            
    @Basic
    private Integer costo;
    
    //@Column(name = "lista_servicios")
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Servicio> listaSevicios;

    public PaqueteTuristico(Integer costo, List<Servicio> listaSevicios) {
        this.costo = costo;
        this.listaSevicios = listaSevicios;
    }

    public PaqueteTuristico() {
    }
    
    public void addServicio(Servicio servicio){
       this.listaSevicios.add(servicio);
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCosto() {
        return costo;
    }

    public void setCosto(Integer costo) {
        this.costo = costo;
    }

    public List<Servicio> getListaSevicios() {
        return listaSevicios;
    }

    public void setListaSevicios(List<Servicio> listaSevicios) {
        this.listaSevicios = listaSevicios;
    }
    
    
    
    private static final long serialVersionUID = 1L;
}
