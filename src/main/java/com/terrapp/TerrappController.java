package com.terrapp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.terrapp.models.Inmobiliaria;
import com.terrapp.models.Propiedad;
import com.terrapp.util.ApiManager;

@Controller
public class TerrappController {
	public static final String URI_BASE = "http://localhost:8888/";

	@RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	public ModelAndView obtenerIndice() {
		
		ApiManager api = new ApiManager();
		
		List<Object> objList = api.obtenerObjetos("propiedades/destacadas", new Propiedad());
		List<Propiedad> prop = new ArrayList<Propiedad>();

		for (int i = 0; i < objList.size(); i++) {

			prop.add((Propiedad) objList.get(i));
		}
		
		List<Object> objList2 = api.obtenerObjetos("inmobiliarias/vip", new Inmobiliaria());
		List<Inmobiliaria> inmo = new ArrayList<Inmobiliaria>();

		for (int i = 0; i < objList2.size(); i++) {

			inmo.add((Inmobiliaria) objList2.get(i));
		}
		
		ModelAndView model = new ModelAndView("index");
		model.addObject("propiedad", prop);
		model.addObject("inmobiliarias", inmo);

		return model;
	}

	@RequestMapping(value = "/inmuebles", method = RequestMethod.GET)
	public ModelAndView obtenerInmuebles() {
		ApiManager api = new ApiManager();

		List<Object> objList = api.obtenerObjetos("propiedades", new Propiedad());
		List<Propiedad> prop = new ArrayList<Propiedad>();

		for (int i = 0; i < objList.size(); i++) {

			prop.add((Propiedad) objList.get(i));
		}

		ModelAndView model = new ModelAndView("inmuebles");
		model.addObject("propiedad", prop);

		return model;

	}

	@RequestMapping(value = "/inmueble/{id}", method = RequestMethod.GET)
	public ModelAndView obtenerInmuebleById(@PathVariable("id") Integer id) {
		ApiManager api = new ApiManager();
		System.out.println("El id es" + id);
		Propiedad p = (Propiedad) api.obtenerObjetoById("propiedades", id, new Propiedad());

		System.out.println(p.getDescripcion() + "si se pudo");

		ModelAndView model = new ModelAndView("inmueble");
		model.addObject("propiedad", p);
		model.addObject("urlmap", p.getDomicilio().getDireccion().replace(' ', '+').replace(",", "%2C"));

		Inmobiliaria i = new Inmobiliaria();
		i.getLogoUrl();
		return model;

	}

	@RequestMapping(value = "/inmueble", method = RequestMethod.GET)
	public ModelAndView obtenerInmueble() {
		ApiManager api = new ApiManager();

		Propiedad p = (Propiedad) api.obtenerObjetos("propiedades", new Propiedad()).get(0);
		ModelAndView model = new ModelAndView("inmueble");
		model.addObject("propiedad", p);
		model.addObject("urlmap", p.getDomicilio().getDireccion().replace(' ', '+').replace(",", "%2C"));

		return model;

	}

	@RequestMapping(value = "/inmobiliarias", method = RequestMethod.GET)
	public ModelAndView obtenerInmobiliaria() {

		ApiManager api = new ApiManager();

		List<Object> objList = api.obtenerObjetos("inmobiliarias", new Inmobiliaria());
		List<Inmobiliaria> inmobiliarias = new ArrayList<Inmobiliaria>();

		for (int i = 0; i < objList.size(); i++) {

			inmobiliarias.add((Inmobiliaria) objList.get(i));
		}

		ModelAndView model = new ModelAndView("inmobiliaria");
		model.addObject("inmobiliarias", inmobiliarias);

		return model;

	}

	@RequestMapping(value = "/nosotros", method = RequestMethod.GET)
	public ModelAndView obtenerNosotros() {

		ModelAndView model = new ModelAndView("nosotros");

		return model;

	}
}