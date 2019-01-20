package com.phoenixair.pojos;

import java.util.Arrays;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;





@Entity
@Table(name="flightdetails3")
public class FlightDetail {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String tcity;
	private String fcity;
	private String depttime;
	private String arivaltime;
	private String buisnessseatprice;
	private String economyseatprice;
	private String monday;
	private String tuesday;
	private String wednesday;
	private String thursday;
	private String friday;
	private String saturday;
	private String sunday;
	
	@OneToMany(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	private List<Passengers> passengers;
	
	
	public FlightDetail() {
		super();
	}

    
	


	public FlightDetail(int id, String tcity, String fcity, String depttime, String arivaltime,
			String buisnessseatprice, String economyseatprice, String monday, String tuesday, String wednesday,
			String thursday, String friday, String saturday, String sunday, List<Passengers> passengers) {
		super();
		this.id = id;
		this.tcity = tcity;
		this.fcity = fcity;
		this.depttime = depttime;
		this.arivaltime = arivaltime;
		this.buisnessseatprice = buisnessseatprice;
		this.economyseatprice = economyseatprice;
		this.monday = monday;
		this.tuesday = tuesday;
		this.wednesday = wednesday;
		this.thursday = thursday;
		this.friday = friday;
		this.saturday = saturday;
		this.sunday = sunday;
		this.passengers = passengers;
	}






	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTcity() {
		return tcity;
	}


	public void setTcity(String tcity) {
		this.tcity = tcity;
	}


	public String getFcity() {
		return fcity;
	}


	public void setFcity(String fcity) {
		this.fcity = fcity;
	}


	public String getDepttime() {
		return depttime;
	}


	public void setDepttime(String depttime) {
		this.depttime = depttime;
	}


	public String getArivaltime() {
		return arivaltime;
	}


	public void setArivaltime(String arivaltime) {
		this.arivaltime = arivaltime;
	}


	public String getBuisnessseatprice() {
		return buisnessseatprice;
	}


	public void setBuisnessseatprice(String buisnessseatprice) {
		this.buisnessseatprice = buisnessseatprice;
	}


	public String getEconomyseatprice() {
		return economyseatprice;
	}


	public void setEconomyseatprice(String economyseatprice) {
		this.economyseatprice = economyseatprice;
	}


	public String getMonday() {
		return monday;
	}


	public void setMonday(String monday) {
		this.monday = monday;
	}


	public String getTuesday() {
		return tuesday;
	}


	public void setTuesday(String tuesday) {
		this.tuesday = tuesday;
	}


	public String getWednesday() {
		return wednesday;
	}


	public void setWednesday(String wednesday) {
		this.wednesday = wednesday;
	}


	public String getThursday() {
		return thursday;
	}


	public void setThursday(String thursday) {
		this.thursday = thursday;
	}


	public String getFriday() {
		return friday;
	}


	public void setFriday(String friday) {
		this.friday = friday;
	}


	public String getSaturday() {
		return saturday;
	}


	public void setSaturday(String saturday) {
		this.saturday = saturday;
	}


	public String getSunday() {
		return sunday;
	}


	public void setSunday(String sunday) {
		this.sunday = sunday;
	}

	
	

	public List<Passengers> getPassengers() {
		return passengers;
	}






	public void setPassengers(List<Passengers> passengers) {
		this.passengers = passengers;
	}






	@Override
	public String toString() {
		return "FlightDetail [id=" + id + ", tcity=" + tcity + ", fcity=" + fcity + ", depttime=" + depttime
				+ ", arivaltime=" + arivaltime + ", buisnessseatprice=" + buisnessseatprice + ", economyseatprice="
				+ economyseatprice + ", monday=" + monday + ", tuesday=" + tuesday + ", wednesday=" + wednesday
				+ ", thursday=" + thursday + ", friday=" + friday + ", saturday=" + saturday + ", sunday=" + sunday
				+ ", passengers=" + passengers + "]";
	}






	
	
	
	

	
    
 	
	



	
	

}
