package com.terrapp.models;

import java.util.Date;

public class HistorialVisita {

	private Integer id;
	private Propiedad propiedad;
	private Cliente cliente;
	private Date fecha;

	public HistorialVisita() {
	}

	public HistorialVisita(int id, Propiedad propiedad, Cliente cliente, Date fecha) {
		this.id = id;
		this.propiedad = propiedad;
		this.cliente = cliente;
		this.fecha = new Date();
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

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

}
