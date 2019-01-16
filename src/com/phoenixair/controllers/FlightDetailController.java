package com.phoenixair.controllers;

import java.util.Arrays;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.phoenixair.pojos.FlightDetail;

import com.phoenixair.services.FlightDetailService;

@Controller
@ComponentScan
public class FlightDetailController {

	
	FlightDetailService flightDetailService;

	@Autowired
	public void setFlightDetailService(FlightDetailService flightDetailService) {
		this.flightDetailService = flightDetailService;
	}
	
	
	@RequestMapping(value="/admin")
	public String listPersons(Model model) {
		model.addAttribute("flightdetail", new FlightDetail());
		model.addAttribute("cities", Arrays.asList("Delhi", "Mumbai","Pune"));
		model.addAttribute("listFlight",this.flightDetailService.listFlight());
		
		return "admindashboard";
	}
	
	
	@RequestMapping(value = "/flightdetails")
	public String flightdisplay(
			@ModelAttribute("flightdetail") 
			@Valid FlightDetail f1, 
			BindingResult result, 
			Model model)
	{
		
		   
		   
		   this.flightDetailService.saveFlight(f1);
		   model.addAttribute("cities", Arrays.asList("Delhi", "Mumbai","Pune"));
		   model.addAttribute("listFlight",this.flightDetailService.listFlight());
		   return "admindashboard";
			

	}
	
	
	@RequestMapping("/remove/{id}")
	public String removePerson(@PathVariable("id") int id) {
		if (id > 0) {
			
			this.flightDetailService.removeFlight(id);
				
			
		}
		
		return "redirect:/admin";
	}
	
	
	
}
