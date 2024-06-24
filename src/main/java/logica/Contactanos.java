/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author DaniSSJ
 */

@Entity
@Table(name = "contactanos")
public class Contactanos {
    @Id
    @Column (name = "id_contacto")
    private int id_contacto;
    
    @Column (name = "nombre")
    private String nombre;
    
    @Column (name = "apellido")
    private String apellido;

    @Column (name = "correo")
    private String correo;

    @Column (name = "mensaje")
    private String mensaje;
    
    
    public Contactanos(){
        
    }

    public Contactanos(int id_contacto, String nombre, String apellido, String correo, String mensaje) {
        this.id_contacto = id_contacto;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.mensaje = mensaje;
    }

    public int getId_contacto() {
        return id_contacto;
    }

    public void setId_contacto(int id_contacto) {
        this.id_contacto = id_contacto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
    
    
   

}
