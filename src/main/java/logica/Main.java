package logica;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Main {
    public static void main(String[] args) {
        EntityManagerFactory emf = null;
        EntityManager em = null;

        try {
            emf = Persistence.createEntityManagerFactory("EjemploJavaPU");
            em = emf.createEntityManager();

            em.getTransaction().begin();

            // Crear un ejemplo de Usuario y Paciente
            Usuario usuario = new Usuario();
            usuario.setNombre("Juan");
            usuario.setApellido("Perez");
            usuario.setTipo_usuario("Paciente");
            usuario.setCorreo_usuario("juan.perez@example.com");
            usuario.setContrasenia("password123");

            Paciente paciente = new Paciente();
            paciente.setNombre_paciente("Juan");
            paciente.setApellido_paciente("Perez");
            paciente.setDescripcion("Paciente con descripción");
            paciente.setEnfermedad("Enfermedad X");
            paciente.setMonto_recaudar(10000.0);
            paciente.setPais("País Y");
            paciente.setEdad(30);
            paciente.setUsuario(usuario);

            // Guardar en la base de datos
            em.persist(usuario);
            em.persist(paciente);

            em.getTransaction().commit();

        } catch (Exception e) {
            if (em != null && em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            e.printStackTrace();
        } finally {
            if (em != null) {
                em.close();
            }
            if (emf != null) {
                emf.close();
            }
        }
    }
}
