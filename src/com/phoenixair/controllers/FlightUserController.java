package com.phoenixair.controllers;

import java.util.Arrays;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	

    @Autowired
	public void setFlightusers(FlightUserService flightusers) {
		this.flightusers = flightusers;
	}

    private FlightDetailService flightDetailService;
    
    @Autowired
	public void setFlightDetailService(FlightDetailService flightDetailService) {
		this.flightDetailService = flightDetailService;
	}

    //to go to the index
	@RequestMapping(value= {"/"})
	public ModelAndView gohome(Model model)
	{
		
		ModelAndView mv=new ModelAndView("index.jsp");
		model.addAttribute("cities", Arrays.asList("Delhi", "Mumbai","Pune"));
		model.addAttribute("listFlight",this.flightDetailService.listFlight());
		
		return mv;
	}
	
	// click signup and go to register page 
	@RequestMapping(value="/user")
	public String listEmployee(Model model) {
		
		model.addAttribute("flightuser", new FlightUser());
		
		return "register";
		
	}
	
	
	
	
	// after clicking signup button on register.jsp and go to login
	@RequestMapping(value = "/user/add")
	public String addPerson(
			@ModelAttribute("flightuser") 
			@Valid FlightUser f, 
			BindingResult result, 
			Model model)
	{
		
		   
		   
			this.flightusers.registerUser(f);
					
			return "redirect:/login";
			

	}
	
	
	
	
	//check wheather the user is a registered user 
	@RequestMapping(value="/regtologin" , method = RequestMethod.POST)
	public String loginuser(
			@ModelAttribute("login") 
			@Valid Login l, 
			BindingResult result, 
			Model model,
			HttpSession session
			) {
		
			
		
		boolean status=this.flightusers.chkuser(l);
		
		if (status)
		{
			 session.setAttribute("email", l.getEmail());
			 FlightUser currentuser=flightusers.getbyEmail(l.getEmail(), l.getPassword());
			 			 
			 session.setAttribute("currentuser", currentuser);

			
			
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
	
	//go to login.jsp
	@RequestMapping(value= "/login")
	public String login(Model model) {
		
		model.addAttribute("loginuser", new Login());
		
		return "login";
		
		
	}
	
	//logout the user and destroy the session 
	@RequestMapping(value="user/logout")
	public String logout(HttpSession session) {
		
		
		session.invalidate();
		
		return "redirect:/";
		
		
	}
	
	
	
	
	
	
	
	

}
