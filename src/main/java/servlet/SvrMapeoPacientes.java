package servlet;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controlador;
import logica.Paciente;

@WebServlet(name = "SvrMapeoPacientes", urlPatterns = {"/SvrMapeoPacientes"})
public class SvrMapeoPacientes extends HttpServlet {
    Controlador control = new Controlador();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Paciente> listaPaciente = control.obtenerTodosLosPacientes();
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        
        String json = new Gson().toJson(listaPaciente);
        response.getWriter().write(json);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Servlet para mostrar lista de pacientes";
    }
}


