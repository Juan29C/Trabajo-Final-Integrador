/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author DaniSSJ
 */
@Entity
@Table (name ="paciente")
public class Paciente {
    @Id
    @Column(name = "id_usuario")
    private int id_usuario;

    @Column (name="nombre_paciente")
    private String nombre_paciente;

    @Column (name="apellido_paciente")
    private String apellido_paciente;
    
    @Column(name = "descripcion")
    private String descripcion;
    
    @Column(name = "enfermedad")
    private String enfermedad;
    
    @Column(name = "monto_recaudar")
    private double monto_recaudar;
    
    @Column(name = "pais")
    private String pais;
    
    @Column(name = "edad")
    private int edad;
    
    @Column(name = "img_paciente")
    private String img_paciente;
    
    @Column (name = "historia_paciente")
    private String historia_paciente;
    
    @OneToOne
    @MapsId
    @JoinColumn(name = "id_usuario")
    private Usuario usuario;

    public Paciente() {
    }

    public Paciente(int id_usuario, String nombre_paciente, String apellido_paciente, String descripcion, String enfermedad, double monto_recaudar, String pais, int edad, String img_paciente, Usuario usuario) {
        this.id_usuario = id_usuario;
        this.nombre_paciente = nombre_paciente;
        this.apellido_paciente = apellido_paciente;
        this.descripcion = descripcion;
        this.enfermedad = enfermedad;
        this.monto_recaudar = monto_recaudar;
        this.pais = pais;
        this.edad = edad;
        this.img_paciente = img_paciente;
        this.usuario = usuario;
    }



    
    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombre_paciente() {
        return nombre_paciente;
    }

    public void setNombre_paciente(String nombre_paciente) {
        this.nombre_paciente = nombre_paciente;
    }

    public String getApellido_paciente() {
        return apellido_paciente;
    }

    public void setApellido_paciente(String apellido_paciente) {
        this.apellido_paciente = apellido_paciente;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getEnfermedad() {
        return enfermedad;
    }

    public void setEnfermedad(String enfermedad) {
        this.enfermedad = enfermedad;
    }

    public double getMonto_recaudar() {
        return monto_recaudar;
    }

    public void setMonto_recaudar(double monto_recaudar) {
        this.monto_recaudar = monto_recaudar;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getImg_paciente() {
        return img_paciente;
    }

    public void setImg_paciente(String img_paciente) {
        this.img_paciente = img_paciente;
    }

    public String getHistoria_paciente() {
        return historia_paciente;
    }

    public void setHistoria_paciente(String historia_paciente) {
        this.historia_paciente = historia_paciente;
    }

    
    
    
    
    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
}
