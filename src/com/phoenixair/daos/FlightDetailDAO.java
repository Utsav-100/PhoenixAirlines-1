package com.phoenixair.daos;

import java.util.List;

import com.phoenixair.pojos.FlightDetail;
import com.phoenixair.pojos.FlightUser;
import com.phoenixair.pojos.Passengers;

public interface FlightDetailDAO {

	public void saveFlight(FlightDetail flightDetail);
	public List<FlightDetail> listFlight();
	//public List<FlightDetail> listOneWayFlight(String from, String to, String arivalday, String deptday);
	public List<FlightDetail> listOneWayFlight(String from, String to, String deptday, String arivalday);
	public void removeFlight(int id);
	public FlightDetail getFlightById(int id);
	public void savePassengers(Passengers p);
	
}
