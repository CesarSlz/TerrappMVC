package com.terrapp;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.terrapp.models.Propiedad;
import com.terrapp.models.Respuesta;

@Controller
public class TerrappController {
	public static final String URI_BASE = "http://localhost:8888/";

	@RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	public ModelAndView getData() {

		// Crear una instancia que permitira realizar una peticion HTTP
		Client client = ClientBuilder.newClient();

		// Indicando la direccion a donde se a va dirigir la peticion
		WebTarget target = client.target(URI_BASE + "propiedades");

		// Configurar peticion que responde un MIME type JSON
		// Obtener peticion
		Invocation.Builder request = target.request(MediaType.APPLICATION_JSON_TYPE);

		// Obtener la respuesta de la peticion de tipo GET
		Response response = request.get();
		

		// Procesar respuesta para convertirla a JSON
		String jsonResponse = response.readEntity(String.class);

		System.out.println(jsonResponse);
		
		/*
		 *  @JsonFormat
    	 *	(shape = Shape.STRING, pattern = "yyy-MM-dd HH:mm:ss")
		 */
		//Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();

		
		Respuesta r = new Respuesta(jsonResponse);
		
		Propiedad p = (Propiedad) r.getDatos(new Propiedad());
		System.out.println(p.getId());
		ModelAndView model = new ModelAndView("index");

		return model;
	}

	@RequestMapping(value = "/inmueble", method = RequestMethod.GET)
	public ModelAndView getData2() {

		ModelAndView model = new ModelAndView("inmueble");

		return model;

	}

	@RequestMapping(value = "/inmobiliaria", method = RequestMethod.GET)
	public ModelAndView getData3() {

		ModelAndView model = new ModelAndView("inmobiliaria");

		return model;

	}

	@RequestMapping(value = "/nosotros", method = RequestMethod.GET)
	public ModelAndView getData4() {

		ModelAndView model = new ModelAndView("nosotros");

		return model;

	}
}