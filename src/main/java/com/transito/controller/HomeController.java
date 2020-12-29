package com.transito.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.transito.service.ConsultarService;
import com.transito.service.VehiculoService;

@Controller
public class HomeController {

	private VehiculoService vehiculoService = new VehiculoService();

	@GetMapping(value = {"/" , "Home"})
	public String Index(Model model) {
		List lista = vehiculoService.ListaVehiculos();
		
		model.addAttribute("listaVehiculo", lista);
		
		return "index";
	}
	
	@GetMapping("/Papeleta/{nro}")
	public String Papeletas(@PathVariable("nro") String nro , Model model) {
		
		model.addAttribute("propietario", vehiculoService.NombrePropietario(nro));
		model.addAttribute("listaPap", vehiculoService.ListaPapeletas(nro));
		return "Papeleta";
	}
	
}
