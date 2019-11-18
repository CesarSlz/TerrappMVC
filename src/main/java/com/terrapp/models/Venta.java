package com.terrapp.models;

import java.util.Date;

public class Venta {

	private Integer id;
	private Propiedad propiedad;
	private String estatus;
	private float monto;
	private boolean eliminado;
	private Date fechaCreacion;
	private Date fechaModificacion;
	private Date fechaEliminacion;

	public Venta() {
	}

	public Venta(Integer id, Propiedad propiedad, String estatus, float monto, boolean eliminado, Date fechaCreacion,
			Date fechaModificacion, Date fechaEliminacion) {
		this.propiedad = propiedad;
		this.estatus = estatus;
		this.monto = monto;
		this.eliminado = eliminado;
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

	public String getEstatus() {
		return estatus;
	}

	public void setEstatus(String estatus) {
		this.estatus = estatus;
	}

	public float getMonto() {
		return monto;
	}

	public void setMonto(float monto) {
		this.monto = monto;
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
