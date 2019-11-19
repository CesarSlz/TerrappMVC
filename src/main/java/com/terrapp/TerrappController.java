package com.terrapp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.terrapp.models.Domicilio;
import com.terrapp.models.Propiedad;
import com.terrapp.util.ApiManager;

@Controller
public class TerrappController {
	public static final String URI_BASE = "http://localhost:8888/";

	@RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	public ModelAndView obtenerIndice() {
		System.out.println("si entro al pinche indices");

		ModelAndView model = new ModelAndView("index");

		return model;
	}

	@RequestMapping(value = "/inmuebles", method = RequestMethod.GET)
	public ModelAndView obtenerInmuebles() {
		ApiManager api = new ApiManager();

		Propiedad p = (Propiedad) api.obtenerObjetos("propiedades", new Propiedad()).get(0);
		Domicilio d = (Domicilio) api.obtenerObjetos("domicilios", new Domicilio()).get(0);

		System.out.println("la calle de la propiedad es: " + p.getDomicilio().getCalle());
		System.out.println("el estado del domicilio es: " + d.getEstado());

		ModelAndView model = new ModelAndView("inmuebles");
		model.addObject("propiedad", p);

		return model;

	}

	@RequestMapping(value = "/inmueble", method = RequestMethod.GET)
	public ModelAndView obtenerInmueble() {

		ModelAndView model = new ModelAndView("inmueble");

		return model;

	}

	@RequestMapping(value = "/inmobiliaria", method = RequestMethod.GET)
	public ModelAndView obtenerInmobiliaria() {

		ModelAndView model = new ModelAndView("inmobiliaria");

		return model;

	}

	@RequestMapping(value = "/nosotros", method = RequestMethod.GET)
	public ModelAndView obtenerNosotros() {

		ModelAndView model = new ModelAndView("nosotros");

		return model;

	}
}

/*
 * // Crear una instancia que permitira realizar una peticion HTTP Client client
 * = ClientBuilder.newClient();
 * 
 * // Indicando la direccion a donde se a va dirigir la peticion WebTarget
 * target = client.target(URI_BASE + "propiedades");
 * 
 * // Configurar peticion que responde un MIME type JSON // Obtener peticion
 * Invocation.Builder request = target.request(MediaType.APPLICATION_JSON_TYPE);
 * 
 * // Obtener la respuesta de la peticion de tipo GET Response response =
 * request.get();
 * 
 * // Procesar respuesta para convertirla a JSON String jsonResponse =
 * response.readEntity(String.class);
 * 
 * System.out.println(jsonResponse);
 * 
 * //@JsonFormat (shape = Shape.STRING, pattern = "yyy-MM-dd HH:mm:ss")
 * 
 * // Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
 * 
 * Respuesta r = new Respuesta(jsonResponse);
 * 
 * Propiedad p = (Propiedad) r.getDatos(new Propiedad());
 * System.out.println(p.getId());
 * 
 */