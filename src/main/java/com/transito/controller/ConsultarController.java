package com.transito.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.transito.modelo.*;
import com.transito.service.ConsultarService;;

@Controller
@RequestMapping(value = "/Consultar")
public class ConsultarController {

	private ConsultarService consultarService = new ConsultarService();

	@GetMapping("/")
	public ModelAndView Inicio() {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("ConsultarPapeletas");
		return mav;
	}

	@GetMapping(value = "/Mes/{anio}")
	public ModelAndView ConsultarMes(@PathVariable("anio") int anio) {
		ModelAndView mav = new ModelAndView();
		List<Papeleta> lista = consultarService.ReporteMes(anio);
		
		mav.addObject("lista", lista);
		mav.setViewName("consulta/CMes");

		return mav;
	}
	
	@GetMapping(value = "/Propietario/{anio}")
	public ModelAndView ConsultarPropietario(@PathVariable("anio") int anio) {
		System.out.println("Entre al metodo ir : "+anio);
		ModelAndView mav = new ModelAndView();
		List<Papeleta> lista = consultarService.ReportePropietario(anio);
		
		mav.addObject("lista", lista);
		mav.setViewName("consulta/CPropietario");

		return mav;
	}

}
