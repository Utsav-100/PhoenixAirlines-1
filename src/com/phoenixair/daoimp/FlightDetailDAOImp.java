package com.phoenixair.daoimp;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.phoenixair.daos.FlightDetailDAO;
import com.phoenixair.pojos.FlightDetail;
import com.phoenixair.pojos.FlightUser;
import com.phoenixair.pojos.Passengers;


@Repository
public class FlightDetailDAOImp implements FlightDetailDAO {


	static Transaction tx;
	
	private static final Logger logger = 			
			LoggerFactory.getLogger( FlightDetailDAOImp.class);
	
	SessionFactory sessionFactory ;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public void saveFlight(FlightDetail flightDetail) {
	
		Session session = this.sessionFactory.openSession();
		tx=session.beginTransaction();
		session.save(flightDetail);
		tx.commit();
		session.close();
		logger.info("Flight details saved successfully,Flight Details="+flightDetail);
		
	}

	@Override
	public List<FlightDetail> listFlight() {
		
		Session session = this.sessionFactory.openSession();
		List<FlightDetail> FlightList = session.createQuery("from FlightDetail").list();
		session.close();
		for (FlightDetail p : FlightList) {
			logger.info("Flight List::" + p);
		}
		return FlightList;
	}

	@Override
	public void removeFlight(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		tx=session.beginTransaction();
		FlightDetail f = (FlightDetail) session.load(FlightDetail.class, new Integer(id));
		if (null != f) {
			session.delete(f);
			tx.commit();
			session.close();
		}else {
			logger.error("Flight NOT deleted, with Flight Id=" +id);
		}
		logger.info("Flight deleted successfully, Flight details=" + f);
		
	}

	@Override
	public List<FlightDetail> listOneWayFlight(String fromCity, String toCity, String deptDay, String arivalDay){
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("from FlightDetail where fcity=:fcity and tcity=:tcity and "+deptDay+"=:T");
		
		q.setString("fcity",fromCity);
		q.setString("tcity",toCity);
		q.setString("T","T");
		
		List<FlightDetail>FlightList;
		FlightList=q.list();
		
	    session.close();
		for (FlightDetail p : FlightList) {
			logger.info("Flight List::" + p);
		}
		return FlightList;
		
	}

	@Override
	public FlightDetail getFlightById(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		tx=session.beginTransaction();
		Query q=session.createQuery("from FlightDetail  where id=:id");
  
		 q.setInteger("id", id);
		 
		 
		
		List<FlightDetail> u;
		u= q.list();
	
		tx.commit();
	//	session.close();
		//logger.info("User details saved successfully,User Details");
		
		if(u.size()>0)
		{
		
		  return u.get(0);
		  
		}
		else
		{
		  return null;	
		}
		
	}

	@Override
	public void savePassengers(Passengers p) {
		
		Session session = this.sessionFactory.openSession();
		tx=session.beginTransaction();
		if(p.getFirstName()!=null)
		{
		session.save(p);
		}
		tx.commit();
		session.close();
		logger.info("Passanger details saved successfully="+p);
	
		
	}

	@Override
	public List<String> getAlreadyBookedSeats(FlightDetail fd) {
		
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("from Passengers where flightDetails=:flightDetails");
		
		q.setParameter("flightDetails", fd);
		
		
		
		List<Passengers>plist;
		plist=q.list();
		
	    session.close();
		
	    for (Passengers p :plist ) {
			logger.info("Flight List::" + p);
		}
		
	    List<String>  seats = new ArrayList<String>();
	    
		for(Passengers p : plist ){
			
			if(p!=null)
			{
	       seats.add(p.getSeatNo());
			}
	    }
		
		return seats;
		

	}

	


	
}
