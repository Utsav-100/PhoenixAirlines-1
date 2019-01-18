package com.phoenixair.controllers;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

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
		
		String gender2=request.getParameter("gender2");
		
		String firstName2=request.getParameter("firstname2");
		
		String lastName2=request.getParameter("lastname2");
		
		String gender3=request.getParameter("gender3");
		
		String firstName3=request.getParameter("firstname3");
		
		String lastName3=request.getParameter("lastname3");
		
		Passengers p1=new Passengers();
		Passengers p2=new Passengers();
		Passengers p3=new Passengers();
		
		
		
		////////////////////////////////////
		p1.setTitle(gender1);
		p1.setFirstName(firstName1);
		p1.setLastName(lastName1);
		
		/////////////////////////////////////
		
        ////////////////////////////////////
		p2.setTitle(gender2);
		p2.setFirstName(firstName2);
		p2.setLastName(lastName2);

		/////////////////////////////////////
		
		////////////////////////////////////
		p3.setTitle(gender3);
		p3.setFirstName(firstName3);
		p3.setLastName(lastName3);

		/////////////////////////////////////
		
		
		
		session.setAttribute("passangerObject1", p1);
		session.setAttribute("passangerObject2", p2);
		session.setAttribute("passangerObject3", p3);
		
		//get Id form flightdetailsession
		//call the already seats booked method
		//store it in the session
		
		FlightDetail fd=(FlightDetail)session.getAttribute("flightDetail");
		
		List<String> seatslist=flightDetailService.getAlreadyBookedSeats(fd);
		
		session.setAttribute("seatlist", seatslist);
				
		//System.out.println(seatslist.toString());
		
		return "seats";
	}
	
	@RequestMapping(value="/payment")
	public String payment(Model model,HttpServletRequest request,HttpSession session) {
		
		String seats=request.getParameter("seats");
			
		
		System.out.println(seats);
		
		
		Passengers p1=(Passengers)session.getAttribute("passangerObject1");
		Passengers p2=(Passengers)session.getAttribute("passangerObject2");
		Passengers p3=(Passengers)session.getAttribute("passangerObject3");
		
		FlightUser fu=(FlightUser)session.getAttribute("currentuser");
		FlightDetail fd=(FlightDetail)session.getAttribute("flightDetail");
		
		String seatsarray[]=new String[3];
		
        seatsarray=seats.split(",");
		
		System.out.println(seatsarray.toString());
		
		int i=0;
		if(p1.getFirstName()!=null)
		{
		p1.setSeatNo(seatsarray[i]);
		p1.setfUser(fu);
		p1.setFlightDetails(fd);
		i++;
		}
		
		
		if(p2.getFirstName()!=null)
		{
		p2.setSeatNo(seatsarray[i]);
		p2.setfUser(fu);
		p2.setFlightDetails(fd);
		i++;
		}
		
		if(p3.getFirstName()!=null)
		{
		p3.setSeatNo(seatsarray[i]);
		p3.setfUser(fu);
		p3.setFlightDetails(fd);
		i++;
		}
	//	List<Passengers> passengers=new ArrayList<Passengers>(); 
	//	passengers.add(p1);
	//	passengers.add(p2);
	//	passengers.add(p3);
	
	//	fd.setPassengers(passengers);
		
	//	fu.setPassengers(passengers);
	//	fd.setPassengers(passengers);
       
		
		session.setAttribute("finalpassanger1",p1);
		session.setAttribute("finalpassanger2",p2);
		session.setAttribute("finalpassanger3",p3);
	
				
		
		return "payment";

	}
	
	
	@RequestMapping(value="/paymentdone")
	public String paymentdone(Model model,HttpSession session) {
		
		
		Passengers p1=(Passengers)session.getAttribute("finalpassanger1");
		Passengers p2=(Passengers)session.getAttribute("finalpassanger2");
		Passengers p3=(Passengers)session.getAttribute("finalpassanger3");
	
		
		System.out.println(p1);
		System.out.println(p2); 
		System.out.println(p3); 
		
		this.flightDetailService.savePassengers(p1);
		this.flightDetailService.savePassengers(p2);
		this.flightDetailService.savePassengers(p3);
		
		return "ticket";
	}
	
	
	
	
	
	
	
}
