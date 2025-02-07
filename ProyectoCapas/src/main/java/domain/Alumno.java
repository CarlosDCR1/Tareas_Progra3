/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

/**
 *
 * @author visitante
 */
public class Alumno {
    String carnetAlumno;
    String nombreAlumno;
    String direccionAlumno;
    String telefonoAlumno;
    String emailAlumno;
    String estatusAlumno;

    public Alumno() {
    }

    public Alumno(String carnetAlumno) {
        this.carnetAlumno = carnetAlumno;
    }

    public Alumno(String nombreVendedor, String direVendedor) {
        this.carnetAlumno = carnetAlumno;
        this.nombreAlumno = nombreAlumno;
        this.direccionAlumno = direccionAlumno;
        this.telefonoAlumno = telefonoAlumno;
        this.emailAlumno = emailAlumno;
        this.estatusAlumno = estatusAlumno;
    }

    public int getId_vendedor() {
        return id_vendedor;
    }

    public void setId_vendedor(int id_vendedor) {
        this.id_vendedor = id_vendedor;
    }

    public String getNombreVendedor() {
        return nombreVendedor;
    }

    public void setNombreVendedor(String nombreVendedor) {
        this.nombreVendedor = nombreVendedor;
    }

    public String getDireVendedor() {
        return direVendedor;
    }

    public void setDireVendedor(String direVendedor) {
        this.direVendedor = direVendedor;
    }

    @Override
    public String toString() {
        return "Vendedor{" + "id_vendedor=" + id_vendedor + ", nombreVendedor=" + nombreVendedor + ", direVendedor=" + direVendedor + '}';
    }
    
}
