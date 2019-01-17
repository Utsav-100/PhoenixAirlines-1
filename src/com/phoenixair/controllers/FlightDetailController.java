package com.phoenixair.controllers;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
import com.phoenixair.pojos.FlightUser;
import com.phoenixair.pojos.Passengers;
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
			Model model
			)
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
	public String oneway(Model model , HttpServletRequest request,HttpSession session) {
		
		
		String fromcity=request.getParameter("source");

		String tocity=request.getParameter("destination");
		
		String departuredate=request.getParameter("departuredate");
		
		String arrivaldate=request.getParameter("arivaldate");
		
		String adultcount=request.getParameter("adult");
				
		String childcount=request.getParameter("child");
		
		int adultcountI=Integer.parseInt(adultcount);
		
		int childcountI=Integer.parseInt(childcount);
		
		session.setAttribute("adultcount", adultcountI);
		
		session.setAttribute("childcount", childcountI);
		
	//	System.out.println(adultcount+" "+childcount);
		
		
	    String departday=null,arrivalday=null;
		
		try {
			Date d1=new SimpleDateFormat("yyyy-MM-dd").parse(departuredate);
			System.out.println(d1.getDay());
			switch (d1.getDay()) {
			case 0:
				departday = "sunday";
			    break;
			case 1:
				departday = "monday";
			    break;
			case 2:
				departday = "tuesday";
			    break;
			case 3:
				departday = "wednesday";
			    break;
			case 4:
				departday = "thursday";
			    break;
			case 5:
				departday = "friday";
			    break;
			case 6:
				departday = "saturday";
			}
			
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	/*	try {
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
		
		 */
		
		
		
		System.out.println(fromcity+" "+tocity+" "+departuredate+" "+arrivaldate+" "+departday+" "+arrivalday);
		 
		model.addAttribute("listFlightOneWay",this.flightDetailService.listOneWayFlight(fromcity,tocity, departday, arrivalday));
		
		
		return "displayflights";
	}
	
	
	
	@RequestMapping("/book/{id}")
	public String bookFlight(@PathVariable("id") int id,HttpSession session) {
		
		FlightDetail flightDetail=flightDetailService.getFlightById(id);
		
		session.setAttribute("flightDetail",flightDetail);
		
		System.out.println(flightDetail);
		
		
		
		
		return "passanger";
	}
	
	
	@RequestMapping(value="/passengers")
	public String passenger(Model model,HttpServletRequest request,HttpSession session) {
		
		String gender1=request.getParameter("gender1");
			
		String firstName1=request.getParameter("firstname1");
		
		String lastName1=request.getParameter("lastname2");
		
		Passengers p1=new Passengers();
		
		////////////////////////////////////
		p1.setTitle(gender1);
		p1.setFirstName(firstName1);
		p1.setLastName(lastName1);
		
		/////////////////////////////////////
		
		session.setAttribute("passangerObject", p1);
		
		
				
		
		return "seats";
	}
	
	@RequestMapping(value="/payment")
	public String payment(Model model,HttpServletRequest request,HttpSession session) {
		
		String seats=request.getParameter("seats");
			
		
		System.out.println(seats);
		
		
		Passengers p1=(Passengers)session.getAttribute("passangerObject");
		FlightUser fu=(FlightUser)session.getAttribute("currentuser");
		FlightDetail fd=(FlightDetail)session.getAttribute("flightDetail");
		
		p1.setSeatNo(seats);
		p1.setfUser(fu);
		p1.setFlightDetails(fd);
		
		session.setAttribute("finalpassanger",p1);
		
	    System.out.println(p1);
		
		
				
		
		return "payment";
	}
	
	
	@RequestMapping(value="/paymentdone")
	public String paymentdone(Model model,HttpSession session) {
		
		
		Passengers p1=(Passengers)session.getAttribute("finalpassanger");
		
		System.out.println(p1); 
		
		this.flightDetailService.savePassengers(p1);		
		
		return "ticket";
	}
	
	
	
	
	
	
	
}
