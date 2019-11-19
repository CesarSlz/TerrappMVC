package com.terrapp.models;

import java.util.Date;
import java.util.Set;

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
	private Set<Fotos> fotos;
	private AreasCompartidas areasCompartidas;
	private Caracteristicas caracteristicas;
	private Servicios servicios;
	private Casa casa;
	private Departamento departamento;
	private Terreno terreno;
	private Venta venta;
	private Renta renta;
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

	public Set<Fotos> getFotos() {
		return fotos;
	}

	public void setFotos(Set<Fotos> fotos) {
		this.fotos = fotos;
	}

	public AreasCompartidas getAreasCompartidas() {
		return areasCompartidas;
	}

	public void setAreasCompartidas(AreasCompartidas areasCompartidas) {
		this.areasCompartidas = areasCompartidas;
	}

	public Caracteristicas getCaracteristicas() {
		return caracteristicas;
	}

	public void setCaracteristicas(Caracteristicas caracteristicas) {
		this.caracteristicas = caracteristicas;
	}

	public Servicios getServicios() {
		return servicios;
	}

	public void setServicios(Servicios servicios) {
		this.servicios = servicios;
	}

	public Casa getCasa() {
		return casa;
	}

	public void setCasa(Casa casa) {
		this.casa = casa;
	}

	public Departamento getDepartamento() {
		return departamento;
	}

	public void setDepartamento(Departamento departamento) {
		this.departamento = departamento;
	}

	public Terreno getTerreno() {
		return terreno;
	}

	public void setTerreno(Terreno terreno) {
		this.terreno = terreno;
	}

	public Venta getVenta() {
		return venta;
	}

	public void setVenta(Venta venta) {
		this.venta = venta;
	}

	public Renta getRenta() {
		return renta;
	}

	public void setRenta(Renta renta) {
		this.renta = renta;
	}

}
