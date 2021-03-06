package com.phoenixair.serviceimp;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phoenixair.daos.FlightDetailDAO;
import com.phoenixair.pojos.FlightDetail;
import com.phoenixair.pojos.Passengers;
import com.phoenixair.services.FlightDetailService;

@Service
public class FlightDetailServiceImp implements FlightDetailService{

	FlightDetailDAO flightDetailDAO;
	
	@Autowired
	public void setFlightDetailDAO(FlightDetailDAO flightDetailDAO) {
		this.flightDetailDAO = flightDetailDAO;
	}


	@Override
	@Transactional
	public void saveFlight(FlightDetail flightDetail) {
		
		this.flightDetailDAO.saveFlight(flightDetail);
	}




	@Override
	public List<FlightDetail> listFlight() {
		// TODO Auto-generated method stub
		return this.flightDetailDAO.listFlight() ;
	}


	@Override
	public void removeFlight(int id) {
		// TODO Auto-generated method stub
		
		this.flightDetailDAO.removeFlight(id);
		
	}


	@Override
	public List<FlightDetail> listOneWayFlight(String from, String to, String deptday, String arivalday) {
		// TODO Auto-generated method stub
		return this.flightDetailDAO.listOneWayFlight(from, to, deptday, arivalday) ;
	}


	@Override
	public FlightDetail getFlightById(int id) {
		// TODO Auto-generated method stub
		return flightDetailDAO.getFlightById(id);
	}


	@Override
	public void savePassengers(Passengers p) {
		// TODO Auto-generated method stub
		this.flightDetailDAO.savePassengers(p);
		
	}


	@Override
	public List<String> getAlreadyBookedSeats(FlightDetail fd) {
		// TODO Auto-generated method stub
		return this.flightDetailDAO.getAlreadyBookedSeats(fd);
	}

}
