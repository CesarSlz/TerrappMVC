package com.terrapp.models;

import java.util.Date;

public class Usuario {

	private Integer id;
	private Inmobiliaria inmobiliaria;

	private String nombre;
	private String apellidos;
	private String celular;
	private String correo;
	private String contrasena;
	private String tipoUsuario;
	private boolean eliminado;
	private Date fechaCreacion;
	private Date fechaEliminacion;
	private Date fechaModificacion;

	public Usuario() {
	}

	public Usuario(Integer id, Inmobiliaria inmobiliaria, String nombre, String apellidos, String celular,
			String correo, String contrasena, String tipoUsuario, boolean eliminado, Date fechaCreacion,
			Date fechaEliminacion, Date fechaModificacion) {
		// this.id = id;
		this.inmobiliaria = inmobiliaria;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.celular = celular;
		this.correo = correo;
		this.contrasena = contrasena;
		this.tipoUsuario = tipoUsuario;
		// this.eliminado = eliminado;
		this.fechaCreacion = new Date();
		// this.fechaEliminacion = fechaEliminacion;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Inmobiliaria getInmobiliaria() {
		return inmobiliaria;
	}

	public void setIdInmobiliaria(Inmobiliaria inmobiliaria) {
		this.inmobiliaria = inmobiliaria;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public String getTipoUsuario() {
		return tipoUsuario;
	}

	public void setTipoUsuario(String tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}

	public boolean isEliminado() {
		return eliminado;
	}

	public void setEliminado(boolean eliminado) {
		this.eliminado = eliminado;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public Date getFechaEliminacion() {
		return fechaEliminacion;
	}

	public void setFechaEliminacion(Date fechaEliminacion) {
		this.fechaEliminacion = fechaEliminacion;
	}

	public Date getFechaModificacion() {
		return fechaModificacion;
	}

	public void setFechaModificacion(Date fechaModificacion) {
		this.fechaModificacion = fechaModificacion;
	}

	public void setInmobiliaria(Inmobiliaria inmobiliaria) {
		this.inmobiliaria = inmobiliaria;
	}

}
