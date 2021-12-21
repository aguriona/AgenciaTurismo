/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "SvCliente", urlPatterns = {"/cliente"})
public class SvCliente extends HttpServlet {
     
    Controladora control = new Controladora();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        List<Cliente> listaClientes = control.listarCLientes();
        HttpSession misession = request.getSession();
        misession.setAttribute("listaClientes", listaClientes);
        response.sendRedirect("listarClientes.jsp");
        
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        Cliente cliente = new Cliente();       

        
        
        cliente.setNombre(request.getParameter("nombre"));
        cliente.setApellido(request.getParameter("apellido"));
        cliente.setDireccion(request.getParameter("direccion"));
        cliente.setDni(request.getParameter("dni"));
        cliente.setFechaNac(request.getParameter("fecha"));
        cliente.setNacionalidad(request.getParameter("nacionalidad"));
        cliente.setCelular(request.getParameter("celular"));
        cliente.setEmail(request.getParameter("email"));
        
        System.out.println("CLIENTE: " + cliente.getApellido());
      control.guardarCliente(cliente);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
