package com.phoenixair.controllers;

import java.util.Arrays;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.phoenixair.pojos.FlightDetail;
import com.phoenixair.pojos.FlightUser;
import com.phoenixair.pojos.Login;
import com.phoenixair.services.FlightDetailService;
import com.phoenixair.services.FlightUserService;

@Controller
@ComponentScan
public class FlightUserController {


	
	private FlightUserService flightusers;
	private FlightDetailService flightDetailService;
	
	@Autowired
	public void setFlightusers(FlightUserService flightusers) {
		this.flightusers = flightusers;
		
		
	}
	
	
	
	@Autowired
	public void setFlightDetailService(FlightDetailService flightDetailService) {
		this.flightDetailService = flightDetailService;
	}




	@RequestMapping(value= {"/"})
	public ModelAndView gohome()
	{
		
		ModelAndView mv=new ModelAndView("index.jsp");
		
		return mv;
	}
	
	
	@RequestMapping(value="/user")
	public String listEmployee(Model model) {
		
		model.addAttribute("flightuser", new FlightUser());
		
		return "register";
		
	}
	
	
	
	
	
	@RequestMapping(value = "/user/add")
	public String addPerson(
			@ModelAttribute("flightuser") 
			@Valid FlightUser f, 
			BindingResult result, 
			Model model)
	{
		
		   
		   
			this.flightusers.registerUser(f);
					
				
			//model.addAttribute("login", new Login());
		
			return "redirect:/login";
			

	}
	
	
	
	
	
	@RequestMapping(value="/regtologin" , method = RequestMethod.POST)
	public String loginuser(
			@ModelAttribute("login") 
			@Valid Login l, 
			BindingResult result, 
			Model model
			) {
		
		
		boolean status=this.flightusers.chkuser(l);
		
		if (status)
		{
			if(l.getEmail().equalsIgnoreCase("abc@gmail.com"))
			{
				
				model.addAttribute("flightdetail", new FlightDetail());
			    model.addAttribute("cities", Arrays.asList("Delhi", "Mumbai","Pune"));
			    model.addAttribute("listFlight",this.flightDetailService.listFlight());
			    
				
				return "admindashboard";
			}
			else
			{	
			
				return "redirect:/";
			}
			
		}
		else
		{
			return "redirect:/login";
			
			
	    }
	
	   	
		
	}
	
	@RequestMapping(value="/login")
	public String login(Model model) {
		
		model.addAttribute("loginuser", new Login());
		
		return "login";
		
		
	}
	
	

	
	
	
	
	

}
