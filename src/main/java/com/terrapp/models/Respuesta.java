package com.terrapp.models;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

public class Respuesta {
	private int codigo;
	private String mensaje;
	private List<JsonObject> datos;

	public Respuesta() {
	}

	public Respuesta(String gson) {
		Gson g = new Gson();
		System.out.println(gson);

		Respuesta r = g.fromJson(gson, Respuesta.class);
		System.out.println("entro a respuesta");
		this.codigo = r.getCodigo();
		this.mensaje = r.getMensaje();
		this.datos = r.getDatos();

	}

	public Respuesta(int codigo, String mensaje, List<JsonObject> datos) {
		super();
		this.codigo = codigo;
		this.mensaje = mensaje;
		this.datos = datos;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public List<JsonObject> getDatos() {

		return datos;
	}

	public List<Object> getDatos(Object objeto) {
		Gson gson = new Gson();
		List<Object> lista = new ArrayList<Object>();

		for (int i = 0; i < datos.size(); i++) {
			lista.add(gson.fromJson(this.datos.get(i).toString(), objeto.getClass()));
		}

		return lista;
	}

	public Object getDato(Object objeto, Integer index) {

		Gson gson = new Gson();

		System.out.println("si llego a getDato");

		Object salida = gson.fromJson(this.datos.get(index).toString(), objeto.getClass());
		return salida;
	}

	public void setDatos(List<JsonObject> datos) {
		this.datos = datos;
	}

}
