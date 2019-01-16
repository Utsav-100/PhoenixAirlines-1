package com.phoenixair.daoimp;


import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.phoenixair.daos.FlightUserDAO;
import com.phoenixair.pojos.FlightUser;
import com.phoenixair.pojos.Login;

@Repository
public class FlightDAOImp implements FlightUserDAO {
	
	
	static Transaction tx;
	
	private static final Logger logger = 			
			LoggerFactory.getLogger(FlightDAOImp.class);
	
	SessionFactory sessionFactory ;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



	@Override
	@Transactional
	public void registerUser(FlightUser user) {
		
		Session session = this.sessionFactory.openSession();
		tx=session.beginTransaction();
		session.save(user);
		tx.commit();
		session.close();
		logger.info("User details saved successfully,User Details="+user);
		
		
	}



	@Override
	public boolean chkuser(Login login) {
		// TODO Auto-generated method stub
		
		Session session = this.sessionFactory.openSession();
		tx=session.beginTransaction();
		Query q=session.createQuery("from FlightUser f where f.email=:email and f.password=:password ");
     //	System.out.println(login.getEmail());
		q.setString("email",login.getEmail());
		q.setString("password",login.getPassword());
		
		List<FlightUser> u;
		u= q.list();
	
		tx.commit();
	//	session.close();
		//logger.info("User details saved successfully,User Details");
		
		if(u.size()>0)
		{
		
		  return true;
		  
		}
		else
		{
		  return false;	
		}
		
	}

}
