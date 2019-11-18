package com.terrapp.models;

import java.util.Date;

public class Propiedad {

	private Integer id;
	private Domicilio domicilio;
	private Usuario usuario;
	private String descripcion;
	private String mantenimiento;
	private String antiguedad;
	private String estatus;
	private String areaTerreno;
	private String areaConstruccion;
	private boolean eliminado;
	private Date fechaCreacion;
	private Date fechaEliminacion;
	private Date fechaModificacion;

	public Propiedad() {
	}

	public Propiedad(Integer id, Domicilio domicilio, Usuario usuario, String descripcion, String mantenimiento,
			String antiguedad, String estatus, String areaTerreno, String areaConstruccion, boolean eliminado,
			Date fechaCreacion, Date fechaEliminacion) {
		this.domicilio = domicilio;
		this.usuario = usuario;
		this.descripcion = descripcion;
		this.mantenimiento = mantenimiento;
		this.antiguedad = antiguedad;
		this.estatus = estatus;
		this.areaTerreno = areaTerreno;
		this.areaConstruccion = areaConstruccion;
		this.fechaCreacion = new Date();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Domicilio getDomicilio() {
		return domicilio;
	}

	public void setDomicilio(Domicilio domicilio) {
		this.domicilio = domicilio;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getMantenimiento() {
		return mantenimiento;
	}

	public void setMantenimiento(String mantenimiento) {
		this.mantenimiento = mantenimiento;
	}

	public String getAntiguedad() {
		return antiguedad;
	}

	public void setAntiguedad(String antiguedad) {
		this.antiguedad = antiguedad;
	}

	public String getEstatus() {
		return estatus;
	}

	public void setEstado(String estatus) {
		this.estatus = estatus;
	}

	public String getAreaTerreno() {
		return areaTerreno;
	}

	public void setAreaTerreno(String areaTerreno) {
		this.areaTerreno = areaTerreno;
	}

	public String getAreaConstruccion() {
		return areaConstruccion;
	}

	public void setAreaConstruccion(String areaConstruccion) {
		this.areaConstruccion = areaConstruccion;
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

	public void setEstatus(String estatus) {
		this.estatus = estatus;
	}

}
