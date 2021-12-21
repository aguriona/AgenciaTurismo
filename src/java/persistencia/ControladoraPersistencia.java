/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Cliente;
import modelo.Usuario;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author Augusto
 */
public class ControladoraPersistencia {
    
    ClienteJpaController clienteJpaController = new ClienteJpaController();
    EmpleadoJpaController empleadoJpaController = new EmpleadoJpaController();
    PaqueteTuristicoJpaController paqueteTuristicoJpaController = new PaqueteTuristicoJpaController();
    ServicioJpaController servicioJpaController = new ServicioJpaController();
    VentasJpaController ventasJpaController = new VentasJpaController();
    UsuarioJpaController usuarioJpaController = new UsuarioJpaController();
    
    public List<Cliente> listarClientes(){
        return clienteJpaController.findClienteEntities();
    }
    
    public void guardarCliente(Cliente cliente) {
        clienteJpaController.create(cliente);
    } 
    
    public Cliente buscarCliente(Integer id){
        return clienteJpaController.findCliente(id);
    }
    
    public void modificarCliente(Cliente cliente){
        try {
            clienteJpaController.edit(cliente);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarCliente(Integer id){
        try {
            clienteJpaController.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void guardarUsuario(Usuario usuario){
        
         usuarioJpaController.create(usuario);
    }
    
    public void eliminarUsuario(Integer id){
        try {
            usuarioJpaController.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Usuario> listarUsuarios() {
        System.out.println("Entro a la controladora...");
        System.out.println("Lista: " + usuarioJpaController.findUsuarioEntities() );
          System.out.println("Usuario: " + usuarioJpaController.findUsuario(0) );
        
        
        return usuarioJpaController.findUsuarioEntities();
    }


}
