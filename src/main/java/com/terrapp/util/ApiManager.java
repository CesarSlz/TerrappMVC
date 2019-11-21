package com.terrapp.util;

import java.util.List;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.terrapp.models.Respuesta;

public class ApiManager {
	private static final String URI_BASE = "http://localhost:8888/";

	public ApiManager() {
	}

	public List<Object> obtenerObjetos(String tipo, Object respuesta) {

		Client client = ClientBuilder.newClient();

		WebTarget target = client.target(URI_BASE + tipo);

		Invocation.Builder request = target.request(MediaType.APPLICATION_JSON_TYPE);

		Response response = request.get();

		String jsonResponse = response.readEntity(String.class);

		System.out.println(jsonResponse);

		Respuesta r = new Respuesta(jsonResponse);

		System.out.println(r.getMensaje());
		return r.getDatos(respuesta);
	}

	public Object obtenerObjetoById(String tipo, Integer id, Object respuesta) {

		Client client = ClientBuilder.newClient();

		WebTarget target = client.target(URI_BASE + tipo + "/" + id);

		Invocation.Builder request = target.request(MediaType.APPLICATION_JSON_TYPE);

		Response response = request.get();

		String jsonResponse = response.readEntity(String.class);

		System.out.println(jsonResponse);
		// System.out.println("entro a obtener objeto");
		Respuesta r = new Respuesta(jsonResponse);

		System.out.println(r.getMensaje());
		return r.getDato(respuesta, 0);
	}

	public String agregarObjeto(String tipo, Object objeto) {

		Client client = ClientBuilder.newClient();

		WebTarget target = client.target(URI_BASE + tipo);

		Invocation.Builder request = target.request(MediaType.APPLICATION_JSON_TYPE);

		Response response = request.post(Entity.json(objeto));

		String jsonResponse = response.readEntity(String.class);

		Respuesta r = new Respuesta(jsonResponse);

		System.out.println(r.getMensaje());
		return r.getMensaje();
	}

	public String modificarObjeto(String tipo, Integer id, Object objeto) {

		Client client = ClientBuilder.newClient();

		WebTarget target = client.target(URI_BASE + tipo);

		Invocation.Builder request = target.request(MediaType.APPLICATION_JSON_TYPE);

		Response response = request.put(Entity.json(objeto));

		String jsonResponse = response.readEntity(String.class);

		Respuesta r = new Respuesta(jsonResponse);

		System.out.println(r.getMensaje());
		return r.getMensaje();
	}

	public Object eliminarObjetoById(String tipo, Integer id) {

		Client client = ClientBuilder.newClient();

		WebTarget target = client.target(URI_BASE + tipo + "/" + id);

		Invocation.Builder request = target.request(MediaType.APPLICATION_JSON_TYPE);

		Response response = request.delete();

		String jsonResponse = response.readEntity(String.class);

		System.out.println(jsonResponse);

		Respuesta r = new Respuesta(jsonResponse);

		System.out.println(r.getMensaje());
		return r.getMensaje();
	}
}
