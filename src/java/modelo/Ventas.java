package modelo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "ventas")
public class Ventas implements Serializable{
    
    @Id
    private Integer id;
    
    @Basic
    private String medioPago;
    private Boolean habilitado;
    
    @Temporal(TemporalType.DATE)
    private Date fechaVenta;
    
    @ManyToOne
    private Cliente cliente;
    
    @ManyToOne
    private Servicio sevicio;
    
    @ManyToOne
    private PaqueteTuristico paqueteTuristico;
    
    @ManyToOne
    private Empleado empleado;

    public Ventas(Date fechaVenta, String medioPago, Cliente cliente, Servicio sevicio, PaqueteTuristico paqueteTuristico, Empleado empleado, Boolean habilitado) {
        this.fechaVenta = fechaVenta;
        this.medioPago = medioPago;
        this.cliente = cliente;
        this.sevicio = sevicio;
        this.paqueteTuristico = paqueteTuristico;
        this.empleado = empleado;
        this.habilitado = habilitado;
    }

    public Ventas() {
        this.habilitado = true;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getFechaVenta() {
        return fechaVenta;
    }

    public void setFechaVenta(Date fechaVenta) {
        this.fechaVenta = fechaVenta;
    }

    public String getMedioPago() {
        return medioPago;
    }

    public void setMedioPago(String medioPago) {
        this.medioPago = medioPago;
    }

    public Boolean getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(Boolean habilitado) {
        this.habilitado = habilitado;
    }
     
    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Servicio getSevicio() {
        return sevicio;
    }

    public void setSevicio(Servicio sevicio) {
        this.sevicio = sevicio;
    }

    public PaqueteTuristico getPaqueteTuristico() {
        return paqueteTuristico;
    }

    public void setPaqueteTuristico(PaqueteTuristico paqueteTuristico) {
        this.paqueteTuristico = paqueteTuristico;
    }

    public Empleado getEmpleado() {
        return empleado;
    }

    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }
    
    
    
    private static final long serialVersionUID = 1L;    
}
