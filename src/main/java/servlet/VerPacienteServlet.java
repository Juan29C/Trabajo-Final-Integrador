

package servlet;

import controlador.PacienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Paciente;

/**
 *
 * @author JUAN
 */
@WebServlet(name = "VerPacienteServlet", urlPatterns = {"/VerPacienteServlet"})
public class VerPacienteServlet extends HttpServlet {


    private static final long serialVersionUID = 1L;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String pacienteId = request.getParameter("id");
//
//        // Obtener los datos del paciente usando el ID
//        Paciente paciente = PacienteDAO.getPacienteById(pacienteId);
//
//        // Pasar los datos del paciente a la JSP
//        request.setAttribute("paciente", paciente);
//
//        // Reenviar la solicitud a luciana.jsp
//        RequestDispatcher dispatcher = request.getRequestDispatcher("luciana.jsp");
//        dispatcher.forward(request, response);
           
           String pacienteId = request.getParameter("id");

        // Obtener los datos del paciente usando el ID
        Paciente paciente = PacienteDAO.getPacienteById(pacienteId);

        // Pasar los datos del paciente a la JSP
        request.setAttribute("paciente", paciente);

        // Reenviar la solicitud a luciana.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("luciana.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
