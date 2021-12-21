/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import modelo.Cliente;

/**
 *
 * @author Augusto
 */
@WebServlet(name = "SvModificarCliente", urlPatterns = {"/SvModificarCliente"})
public class SvModificarCliente extends HttpServlet {

Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        Integer id = Integer.parseInt(request.getParameter("id"));
        
        Cliente cli = control.buscarCLiente(id);
        cli.setNombre(request.getParameter("nombre"));
        cli.setApellido(request.getParameter("apellido"));
        cli.setDireccion(request.getParameter("direccion"));
        cli.setDni(request.getParameter("dni"));
        cli.setFechaNac(request.getParameter("fecha"));
        cli.setNacionalidad(request.getParameter("nacionalidad"));
        cli.setCelular(request.getParameter("celular"));
        cli.setEmail(request.getParameter("email"));
        
        control.modificarCLiente(cli);
        request.getSession().setAttribute("listaClientes", control.listarCLientes());
        response.sendRedirect("listarClientes.jsp");
        
        
        
    }

    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
        Integer id = Integer.parseInt(request.getParameter("id"));
        
        Cliente cli = control.buscarCLiente(id);
        HttpSession misession = request.getSession();
        misession.setAttribute("cliente", cli);
        response.sendRedirect("modificarCliente.jsp");
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
