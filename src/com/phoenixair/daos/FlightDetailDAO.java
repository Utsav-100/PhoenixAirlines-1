package com.phoenixair.daos;

import java.util.List;

import com.phoenixair.pojos.FlightDetail;

public interface FlightDetailDAO {

	public void saveFlight(FlightDetail flightDetail);
	public List<FlightDetail> listFlight();
	public void removeFlight(int id);
	
}
