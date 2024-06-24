/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import logica.Paciente;

public class PacienteDAO {

    private static final String PERSISTENCE_UNIT_NAME = "EjemploJavaPU";
    private static EntityManagerFactory factory;

    public static Paciente getPacienteById(String id) {
        EntityManager em = getEntityManager();
        Paciente paciente = null;

        try {
            paciente = em.find(Paciente.class, Integer.parseInt(id));
        } finally {
            em.close();
        }

        return paciente;
    }

    private static EntityManager getEntityManager() {
        if (factory == null) {
            factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        }
        return factory.createEntityManager();
    }
}
