package com.terrapp.models;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AreasCompartidas {

	private Integer id;
	private Propiedad propiedad;
	private boolean alberca;
	private boolean salonUsosMultiples;
	private boolean estacionamientoVisita;
	private boolean areasRecreativas;
	private boolean eliminado;
	private Date fechaCreacion;
	private Date fechaModificacion;
	private Date fechaEliminacion;

	public AreasCompartidas() {
	}

	public AreasCompartidas(Integer id, Propiedad propiedad, boolean alberca, boolean salonUsosMultiples,
			boolean estacionamientoVisita, boolean areasRecreativas, boolean eliminado, Date fechaCreacion,
			Date fechaEliminacion) {
		this.propiedad = propiedad;
		this.alberca = alberca;
		this.salonUsosMultiples = salonUsosMultiples;
		this.estacionamientoVisita = estacionamientoVisita;
		this.areasRecreativas = areasRecreativas;
		this.fechaCreacion = new Date();
	}

	public List<String> getAreasCompartidas() {
		List<String> lista = new ArrayList<String>();
		if (alberca)
			lista.add("Alberca");
		if (salonUsosMultiples)
			lista.add("Salón de Usos Multiples");
		if (estacionamientoVisita)
			lista.add("Estacionamiento Visitas");
		if (areasRecreativas)
			lista.add("Áreas Recreativas");
		lista.sort(null);
		return lista;
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

	public boolean isAlberca() {
		return alberca;
	}

	public void setAlberca(boolean alberca) {
		this.alberca = alberca;
	}

	public boolean isSalonUsosMultiples() {
		return salonUsosMultiples;
	}

	public void setSalonUsosMultiples(boolean salonUsosMultiples) {
		this.salonUsosMultiples = salonUsosMultiples;
	}

	public boolean isEstacionamientoVisita() {
		return estacionamientoVisita;
	}

	public void setEstacionamientoVisita(boolean estacionamientoVisita) {
		this.estacionamientoVisita = estacionamientoVisita;
	}

	public boolean isAreasRecreativas() {
		return areasRecreativas;
	}

	public void setAreasRecreativas(boolean areasRecreativas) {
		this.areasRecreativas = areasRecreativas;
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
