package com.phoenixair.daos;

import java.util.List;

import com.phoenixair.pojos.FlightDetail;

public interface FlightDetailDAO {

	public void saveFlight(FlightDetail flightDetail);
	public List<FlightDetail> listFlight();
	public List<FlightDetail> listOneWayFlight(String from,String to,String arivalday,String deptday);
	public void removeFlight(int id);
	
}
