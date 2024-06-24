package persistencia;

import java.util.List;
import logica.Contactanos;
import logica.Donador;
import logica.Noticias;
import logica.Paciente;
import logica.Usuario;

public class ControladorPersistencia {

    private usuarioJpaController usuJpa = new usuarioJpaController();

    public Usuario iniciarSesion(String correo_usuario, String contrasenia) {
        return usuJpa.findUsuarioByCredentials(correo_usuario, contrasenia);
    }

    public List<Paciente> obtenerTodosLosPacientes() {
        List<Paciente> pacientes = usuJpa.findAllPacientes();
        System.out.println("Pacientes obtenidos: " + pacientes);
        return pacientes;
    }

    public List<Noticias> obtenerTodasLasNoticias() {
        List<Noticias> noticias = usuJpa.findAllNoticias();
        return noticias;
    }

    public Contactanos contactarse(String nombre, String apellido, String correo, String mensaje) {
        Contactanos contactanos = new Contactanos();
        contactanos.setNombre(nombre);
        contactanos.setApellido(apellido);
        contactanos.setCorreo(correo);
        contactanos.setMensaje(mensaje);
        usuJpa.createContactanos(contactanos);
        return contactanos;
    }

    public Usuario registrarUsuario(String nombre, String apellido, String correo, String contrasena, String tipo_usuario) {
        Usuario usuario = new Usuario();
        usuario.setNombre(nombre);
        usuario.setApellido(apellido);
        usuario.setCorreo_usuario(correo);
        usuario.setContrasenia(contrasena);
        usuario.setTipo_usuario(tipo_usuario);
        usuJpa.createUsuario(usuario);
        return usuario;

    }

    public Usuario obtenerUsuarioPorId(int idUsuario) {
        return usuJpa.findUsuario(idUsuario);
    }

    public Paciente registrarPaciente(Usuario usuario, String nombre_paciente, String apellido_paciente,
            String descripcion, String enfermedad, double monto_recaudar,
            String pais, int edad, String imgPaciente, String historiaPaciente) {
        Paciente paciente = new Paciente();
        paciente.setUsuario(usuario);
        paciente.setNombre_paciente(nombre_paciente);
        paciente.setApellido_paciente(apellido_paciente);
        paciente.setDescripcion(descripcion);
        paciente.setEnfermedad(enfermedad);
        paciente.setMonto_recaudar(monto_recaudar);
        paciente.setPais(pais);
        paciente.setEdad(edad);
        paciente.setImg_paciente(imgPaciente);
        paciente.setHistoria_paciente(historiaPaciente);
        usuJpa.createPaciente(paciente);
        return paciente;
    }

    public Donador registrarDonador(Usuario usuario, String direccion, String fecha_registro, String telefono, String dni) {
        Donador donador = new Donador();
        donador.setUsuario(usuario);
        donador.setDireccion(direccion);
        donador.setFecha_registro(fecha_registro);
        donador.setTelefono(telefono);
        donador.setDni(dni);
        usuJpa.createDonador(donador);
        return donador;

    }
}
