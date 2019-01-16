package com.phoenixair.daoimp;

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
	public List<FlightDetail> listOneWayFlight(String from, String to, String arivalday, String deptday) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		///////////////////////////////////////////////nilay do it/////////////////
		List<FlightDetail> FlightList = (List<FlightDetail>) session.createSQLQuery("select * from flightdetails3 where fcity='Mumbai' and tcity='Pune' and "+deptday+"='T';");
		session.close();
		for (FlightDetail p : FlightList) {
			logger.info("Flight List::" + p);
		}
		return FlightList;
	}

	


	
}
