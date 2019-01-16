package com.phoenixair.daos;

import org.springframework.stereotype.Repository;

import com.phoenixair.pojos.FlightUser;
import com.phoenixair.pojos.Login;


public interface FlightUserDAO {
	
	public void registerUser(FlightUser user);
    public boolean chkuser(Login login);

}
