/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controlador;
import logica.Usuario;
import persistencia.ControladorPersistencia;

/**
 *
 * @author DaniSSJ
 */
@WebServlet(name = "SrvRegistrarUsuario_donador", urlPatterns = {"/SrvRegistrarUsuario_donador"})
public class SrvRegistrarUsuario_donador extends HttpServlet {

    Controlador control = new Controlador();
    ControladorPersistencia control2 = new ControladorPersistencia();

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
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
        String direccion = request.getParameter("direccion").trim();
        String fechaRegistro = request.getParameter("fecha_registro").trim();
        String telefono = request.getParameter("telefono").trim();
        String dni = request.getParameter("dni").trim();

        Usuario usuario = control2.obtenerUsuarioPorId(idUsuario);
        if (usuario == null) {
            try {
                throw new Exception("Usuario no encontrado con ID: " + idUsuario);
            } catch (Exception ex) {
                Logger.getLogger(SrvRegistrarUsuario_donador.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            control.registrarDonador(usuario, direccion, fechaRegistro, telefono, dni);
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
