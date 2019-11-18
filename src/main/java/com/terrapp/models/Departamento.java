package com.terrapp.models;

import java.util.Date;

public class Departamento {

	private Integer id;
	private Propiedad propiedad;
	private String recamara;
	private String bano;
	private String medioBano;
	private String estacionamiento;
	private String piso;
	private boolean elevador;
	private boolean eliminado;
	private Date fechaCreacion;
	private Date fechaModificacion;
	private Date fechaEliminacion;

	public Departamento() {
	}

	public Departamento(Integer id, Propiedad propiedad, String recamara, String bano, String medioBano,
			String estacionamiento, String piso, boolean elevador, boolean eliminado, Date fechaCreacion,
			Date fechaModificacion, Date fechaEliminacion) {
		this.propiedad = propiedad;
		this.recamara = recamara;
		this.bano = bano;
		this.medioBano = medioBano;
		this.estacionamiento = estacionamiento;
		this.piso = piso;
		this.elevador = elevador;
		this.fechaCreacion = new Date();
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

	public String getRecamara() {
		return recamara;
	}

	public void setRecamara(String recamara) {
		this.recamara = recamara;
	}

	public String getBano() {
		return bano;
	}

	public void setBano(String bano) {
		this.bano = bano;
	}

	public String getMedioBano() {
		return medioBano;
	}

	public void setMedioBano(String medioBano) {
		this.medioBano = medioBano;
	}

	public String getEstacionamiento() {
		return estacionamiento;
	}

	public void setEstacionamiento(String estacionamiento) {
		this.estacionamiento = estacionamiento;
	}

	public String getPiso() {
		return piso;
	}

	public void setPiso(String piso) {
		this.piso = piso;
	}

	public boolean isElevador() {
		return elevador;
	}

	public void setElevador(boolean elevador) {
		this.elevador = elevador;
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

}
