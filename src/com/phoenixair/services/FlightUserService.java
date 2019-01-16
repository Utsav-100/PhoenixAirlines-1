package com.phoenixair.services;

import org.springframework.stereotype.Service;

import com.phoenixair.pojos.FlightUser;
import com.phoenixair.pojos.Login;


public interface FlightUserService {

	public void registerUser(FlightUser user);
	public boolean chkuser(Login login);
}
