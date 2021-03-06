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
import modelo.Usuario;

/**
 *
 * @author Augusto
 */
@WebServlet(name = "SvUsuarioLogin", urlPatterns = {"/usuariologin"})
public class SvUsuarioLogin extends HttpServlet {
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


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
   
        Usuario usuario = new Usuario();
        usuario.setUsername(request.getParameter("username")); 
        usuario.setPassword(request.getParameter("password"));
        
        
        boolean autorizado = control.autorizarUsuario(usuario);
        System.out.println("autorizado: " + autorizado);
        if (autorizado==true){
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario.getUsername());
            session.setAttribute("pass", usuario.getPassword());
            response.sendRedirect("principal.jsp");
        }else{
            
            response.sendRedirect("login.jsp");
        }
        
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
