/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author DaniSSJ
 */
@Entity
@Table(name = "noticias")
public class Noticias {

    @Id
    @Column(name = "id_noticia")
    private int id_noticia;

    @Column(name = "titulo")
    private String titulo;

    @Column(name = "contenido")
    private String contenido;

    @Column(name = "img_noticia")
    private String img_noticia;

    @ManyToOne
    @JoinColumn(name = "id_usuario")
    private Supervisor supervisor;

    public Noticias() {
    }

    public Noticias(int id_noticia, String titulo, String contenido, String img_noticia, Supervisor supervisor) {
        this.id_noticia = id_noticia;
        this.titulo = titulo;
        this.contenido = contenido;
        this.img_noticia = img_noticia;
        this.supervisor = supervisor;
    }

    public int getId_noticia() {
        return id_noticia;
    }

    public void setId_noticia(int id_noticia) {
        this.id_noticia = id_noticia;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public String getImg_noticia() {
        return img_noticia;
    }

    public void setImg_noticia(String img_noticia) {
        this.img_noticia = img_noticia;
    }

    public Supervisor getSupervisor() {
        return supervisor;
    }

    public void setSupervisor(Supervisor supervisor) {
        this.supervisor = supervisor;
    }

    
    
    
    
}
