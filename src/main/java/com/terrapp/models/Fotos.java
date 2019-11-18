package com.terrapp.models;

import java.util.Date;

public class Fotos {

	private Integer id;
	private Propiedad propiedad;
	private String nombre;
	private String url;
	private Date fechaCreacion;

	public Fotos() {
	}

	public Fotos(Integer id, Propiedad propiedad, String nombre, String url, Date fechaCreacion) {
		this.propiedad = propiedad;
		this.nombre = nombre;
		this.url = url;
		this.fechaCreacion = fechaCreacion;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Propiedad getPropiedad() {
		return propiedad;
	}

	public void setPropiedad(Propiedad propiedad) {
		this.propiedad = propiedad;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

}
