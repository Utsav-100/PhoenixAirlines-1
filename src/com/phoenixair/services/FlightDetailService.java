package com.phoenixair.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.phoenixair.pojos.FlightDetail;

@Service
public interface FlightDetailService {

	public void saveFlight(FlightDetail flightDetail);
	public List<FlightDetail> listFlight();
	public List<FlightDetail> listOneWayFlight(String from,String to,String arivalday,String deptday);
	public void removeFlight(int id);
	
}
