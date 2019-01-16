package com.phoenixair.controllers;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.phoenixair.pojos.FlightDetail;

import com.phoenixair.services.FlightDetailService;

import sun.net.www.http.HttpCapture;

@Controller
@ComponentScan
public class FlightDetailController {

	
	FlightDetailService flightDetailService;

	@Autowired
	public void setFlightDetailService(FlightDetailService flightDetailService) {
		this.flightDetailService = flightDetailService;
	}
	
	
	@RequestMapping(value="/admin")
	public String admin(Model model) {
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
	public String removeFlight(@PathVariable("id") int id) {
		if (id > 0) {
			
			this.flightDetailService.removeFlight(id);
				
			
		}
		
		return "redirect:/admin";
	}
	
	
	@RequestMapping(value="/flight/display")
	public String oneway(Model model , HttpServletRequest request) {
		
		
		String fromcity=request.getParameter("source");

		String tocity=request.getParameter("destination");
		
		String departuredate=request.getParameter("departuredate");
		
		String arrivaldate=request.getParameter("arivaldate");
		
	    String departday=null,arrivalday=null;
		
		try {
			Date d1=new SimpleDateFormat("yyyy-MM-dd").parse(departuredate);
			System.out.println(d1.getDay());
			switch (d1.getDay()) {
			case 0:
				departday = "Sunday";
			    break;
			case 1:
				departday = "Monday";
			    break;
			case 2:
				departday = "Tuesday";
			    break;
			case 3:
				departday = "Wednesday";
			    break;
			case 4:
				departday = "Thursday";
			    break;
			case 5:
				departday = "Friday";
			    break;
			case 6:
				departday = "Saturday";
			}
			
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		try {
			Date d2=new SimpleDateFormat("yyyy-MM-dd").parse(arrivaldate);
			System.out.println(d2.getDay());
			switch (d2.getDay()) {
			case 0:
				arrivalday = "Sunday";
			    break;
			case 1:
				arrivalday = "Monday";
			    break;
			case 2:
				arrivalday = "Tuesday";
			    break;
			case 3:
				arrivalday = "Wednesday";
			    break;
			case 4:
				arrivalday= "Thursday";
			    break;
			case 5:
				arrivalday = "Friday";
			    break;
			case 6:
				arrivalday= "Saturday";
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 
		
		
		
		System.out.println(fromcity+" "+tocity+" "+departuredate+" "+arrivaldate+" "+departday+" "+arrivalday);
		 
		model.addAttribute("listFlightOneWay",this.flightDetailService.listOneWayFlight(fromcity,tocity, departday, arrivalday));
		
		
		return "displayflights";
	}
	
	
	
}
