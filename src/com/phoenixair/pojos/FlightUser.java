package com.phoenixair.pojos;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;


@Entity
@Table(name="flightusers2")
public class FlightUser  implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	
	private String title;
	private String firstName;
	private String lastName;
	private String password;
	private String email;
	private String dob;
	private String contact;
	
	@OneToMany(cascade=CascadeType.ALL)
	private List<Passengers> passengers;
	
	public FlightUser() {
		super();
	}
	
	
	public FlightUser(int id, String title, String firstName, String lastName, String password, String email,
			String dob, String contact, List<Passengers> passengers) {
		super();
		this.id = id;
		this.title = title;
		this.firstName = firstName;
		this.lastName = lastName;
		this.password = password;
		this.email = email;
		this.dob = dob;
		this.contact = contact;
		this.passengers = passengers;
	}

    
	
	

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}

	public List<Passengers> getPassengers() {
		return passengers;
	}


	public void setPassengers(List<Passengers> passengers) {
		this.passengers = passengers;
	}


	@Override
	public String toString() {
		return "FlightUser [id=" + id + ", title=" + title + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", password=" + password + ", email=" + email + ", dob=" + dob + ", contact=" + contact
				+ ", passengers=" + passengers + "]";
	}
	
	
	
	
	
}
