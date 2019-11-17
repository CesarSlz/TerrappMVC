package com.terrapp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TerrappController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getData() {

		ModelAndView model = new ModelAndView("index");

		return model;
	}

	@RequestMapping(value = "/property", method = RequestMethod.GET)
	public ModelAndView getData2() {

		ModelAndView model = new ModelAndView("property");

		return model;

	}
	@RequestMapping(value = "/inmobiliaria", method = RequestMethod.GET)
	public ModelAndView getData3() {

		ModelAndView model = new ModelAndView("inmobiliaria");

		return model;

	}
}