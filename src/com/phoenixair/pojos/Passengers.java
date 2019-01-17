package com.phoenixair.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="passengers")
public class Passengers {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="pnr")
	private int pnr;
	
	@Column(name="title")
	private String title;
	
	
	@Column(name="firstName")
	private String firstName;
	
	
	
	@Column(name="lastName")
	private String lastName;
	

	@Column(name="seatNo")
	private String seatNo;
	
	
	@ManyToOne
	private FlightUser fUser;  //referring flight user class
	
	@ManyToOne
	private FlightDetail flightDetails; // referring flight detail class

	public Passengers() {
		super();
	}

	public Passengers(int pnr, String title, String firstName, String lastName, String seatNo, FlightUser fUser,
			FlightDetail flightDetails) {
		super();
		this.pnr = pnr;
		this.title = title;
		this.firstName = firstName;
		this.lastName = lastName;
		this.seatNo = seatNo;
		this.fUser = fUser;
		this.flightDetails = flightDetails;
	}

	public int getPnr() {
		return pnr;
	}

	public void setPnr(int pnr) {
		this.pnr = pnr;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	
	public String getSeatNo() {
		return seatNo;
	}

	public void setSeatNo(String seatNo) {
		this.seatNo = seatNo;
	}

	public FlightUser getfUser() {
		return fUser;
	}

	public void setfUser(FlightUser fUser) {
		this.fUser = fUser;
	}

	public FlightDetail getFlightDetails() {
		return flightDetails;
	}

	public void setFlightDetails(FlightDetail flightDetails) {
		this.flightDetails = flightDetails;
	}

	@Override
	public String toString() {
		return "Passengers [pnr=" + pnr + ", title=" + title + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", seatNo=" + seatNo + ", fUser=" + fUser + ", flightDetails=" + flightDetails + "]";
	}
	
	
	
	
	

}
