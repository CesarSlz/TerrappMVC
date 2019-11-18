package com.terrapp.models;

import java.util.Date;

public class Terreno {

	private Integer id;
	private Propiedad propiedad;
	private boolean luz;
	private boolean agua;
	private boolean eliminado;
	private Date fechaCreacion;
	private Date fechaModificacion;
	private Date fechaEliminacion;

	public Terreno() {
	}

	public Terreno(Integer id, Propiedad propiedad, boolean luz, boolean agua, boolean eliminado, Date fechaCreacion,
			Date fechaModificacion, Date fechaEliminacion) {
		this.propiedad = propiedad;
		this.luz = luz;
		this.agua = agua;
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

	public boolean isLuz() {
		return luz;
	}

	public void setLuz(boolean luz) {
		this.luz = luz;
	}

	public boolean isAgua() {
		return agua;
	}

	public void setAgua(boolean agua) {
		this.agua = agua;
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

	public Date getFechaModificacion() {
		return fechaModificacion;
	}

	public void setFechaModificacion(Date fechaModificacion) {
		this.fechaModificacion = fechaModificacion;
	}

	public Date getFechaEliminacion() {
		return fechaEliminacion;
	}

	public void setFechaEliminacion(Date fechaEliminacion) {
		this.fechaEliminacion = fechaEliminacion;
	}

}
