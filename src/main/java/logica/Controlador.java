/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.util.List;
import persistencia.ControladorPersistencia;

public class Controlador {

    private ControladorPersistencia controladorPersistencia;

    public Controlador() {
        this.controladorPersistencia = new ControladorPersistencia();
    }

    public Usuario iniciarSesion(String correo_usuario, String contrasenia) {
        return controladorPersistencia.iniciarSesion(correo_usuario, contrasenia);
    }

    public List<Paciente> obtenerTodosLosPacientes() {
        return controladorPersistencia.obtenerTodosLosPacientes();
    }

    public List<Noticias> obtenerTodasLasNoticias() {
        return controladorPersistencia.obtenerTodasLasNoticias();
    }

    public Contactanos contactarse(String nombre, String apellido, String correo, String mensaje) {
        return controladorPersistencia.contactarse(nombre, apellido, correo, mensaje);
    }
    
    public Usuario registrarUsuario(String nombre, String apellido, String correo, String contrasena, String tipo_usuario){
        return controladorPersistencia.registrarUsuario(nombre,apellido,correo,contrasena,tipo_usuario);
    }
    
    public Paciente registrarPaciente(Usuario usuario, String nombre_paciente,String apellido_paciente,String descripcion
            ,String enfermedad, double monto_recaudar, String pais, int edad,String imgPaciente,String historiaPaciente){
        return controladorPersistencia.registrarPaciente(usuario, nombre_paciente,apellido_paciente,descripcion
            ,enfermedad, monto_recaudar, pais, edad,imgPaciente,historiaPaciente);
    }
    
    public Donador registrarDonador(Usuario usuario,String direccion, String fecha_registro, String telefono, String dni ){
        return controladorPersistencia.registrarDonador(usuario,direccion,fecha_registro,telefono,dni);
    }
    
    

}
