package com.phoenixair.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.phoenixair.pojos.FlightDetail;
import com.phoenixair.pojos.Passengers;

@Service
public interface FlightDetailService {

	public void saveFlight(FlightDetail flightDetail);
	public List<FlightDetail> listFlight();
	public List<FlightDetail> listOneWayFlight(String from, String to, String deptday, String arivalday);
	public void removeFlight(int id);
	public FlightDetail getFlightById(int id);
	public void savePassengers(Passengers p);
	public List<String> getAlreadyBookedSeats(FlightDetail fd);
	
}
