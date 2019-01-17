package com.phoenixair.serviceimp;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phoenixair.daos.FlightUserDAO;
import com.phoenixair.pojos.FlightUser;
import com.phoenixair.pojos.Login;
import com.phoenixair.services.FlightUserService;

@Service
public class FlightUserServiceImp implements FlightUserService{

	FlightUserDAO flightUser;
	
	@Autowired
	public void setFlightUser(FlightUserDAO flightUser) {
		this.flightUser = flightUser;
	}

	@Override
	@Transactional
	public void registerUser(FlightUser user) {
		// TODO Auto-generated method stub
		
		flightUser.registerUser(user);
	}

	@Override
	public boolean chkuser(Login login) {
		// TODO Auto-generated method stub
		return flightUser.chkuser(login);
	}

	@Override
	public FlightUser getbyEmail(String email, String password) {
		// TODO Auto-generated method stub
		return flightUser.getbyEmail(email, password);
	}

}
