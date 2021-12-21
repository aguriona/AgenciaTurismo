
package logica;

import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.swing.JOptionPane;
import modelo.Cliente;
import modelo.Usuario;
import persistencia.ClienteJpaController;
import persistencia.ControladoraPersistencia;
import persistencia.UsuarioJpaController;


public class Controladora {
            
    Cliente cliente = new Cliente();

    private ControladoraPersistencia controladoraPersistencia = new ControladoraPersistencia();
    
    
    public List<Cliente> listarCLientes(){
        return controladoraPersistencia.listarClientes();
    }
    
    public void guardarCliente(Cliente cliente){
        controladoraPersistencia.guardarCliente(cliente);
    }
    
    public void modificarCLiente(Cliente cliente){
        controladoraPersistencia.modificarCliente(cliente);
    }
    
    public void eliminarCliente(Integer id){
        controladoraPersistencia.eliminarCliente(id);
    }
    
    public Cliente buscarCLiente(Integer id) {
        return controladoraPersistencia.buscarCliente(id);
    }
    
    public List<Usuario> listarUsuarios(){
        return controladoraPersistencia.listarUsuarios();
    }
    

    public void guardarUsuario(Usuario usuario){

        controladoraPersistencia.guardarUsuario(usuario);
    }
    
    public void borrarUsuario(Integer id){
        controladoraPersistencia.eliminarUsuario(id);
    }

    public boolean autorizarUsuario(Usuario usuario) {
        List<Usuario> usuariosList = new ArrayList();
                usuariosList = controladoraPersistencia.listarUsuarios();
        System.out.println("usuariosList: " + usuariosList);
        System.out.println("username " + usuario.getUsername());
        System.out.println("password " + usuario.getPassword());
        
        for(Usuario u : usuariosList){
            if (u.getUsername().equals(usuario.getUsername()) && u.getPassword().equals(usuario.getPassword())){
                System.out.println("usuario: " + u);
                return true;
            }
        }
        return false;
    }

}
