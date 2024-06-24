/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table (name="donador")
public class Donador {
    @Id
    @Column (name = "id_usuario")
    private int id_usuario;
    
    @Column (name ="direccion")
    private String direccion;
    
    @Column (name="fecha_registro")
    private String fecha_registro;
    
    @Column (name="telefono")
    private String telefono;

    @Column (name="dni")
    private String dni;
    
    @OneToOne
    @MapsId
    @JoinColumn(name = "id_usuario")
    private Usuario usuario;

    public Donador() {
    }

    public Donador(int id_usuario, String direccion, String fecha_registro, String telefono, String dni, Usuario usuario) {
        this.id_usuario = id_usuario;
        this.direccion = direccion;
        this.fecha_registro = fecha_registro;
        this.telefono = telefono;
        this.dni = dni;
        this.usuario = usuario;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getFecha_registro() {
        return fecha_registro;
    }

    public void setFecha_registro(String fecha_registro) {
        this.fecha_registro = fecha_registro;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
   
    
    
    
    
    
}
