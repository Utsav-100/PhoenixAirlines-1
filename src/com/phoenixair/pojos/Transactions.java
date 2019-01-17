package com.phoenixair.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "transactions")
public class Transactions {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int transactionId;

	@Column(name = "cardNo")
	private int cardNo;

	@Column(name = "expMonth")
	private String expMonth;

	@Column(name = "expYear")
	private String expYear;

	@Column(name = "amount")
	private double amount;
  
	
	private FlightUser flightUser;

	public Transactions() {
		super();
	}

	public Transactions(int transactionId, int cardNo, String expMonth, String expYear, double amount,
			FlightUser flightUser) {
		super();
		this.transactionId = transactionId;
		this.cardNo = cardNo;
		this.expMonth = expMonth;
		this.expYear = expYear;
		this.amount = amount;
		this.flightUser = flightUser;
	}

	public int getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}

	public int getCardNo() {
		return cardNo;
	}

	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}

	public String getExpMonth() {
		return expMonth;
	}

	public void setExpMonth(String expMonth) {
		this.expMonth = expMonth;
	}

	public String getExpYear() {
		return expYear;
	}

	public void setExpYear(String expYear) {
		this.expYear = expYear;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public FlightUser getFlightUser() {
		return flightUser;
	}

	public void setFlightUser(FlightUser flightUser) {
		this.flightUser = flightUser;
	}

	@Override
	public String toString() {
		return "Transactions [transactionId=" + transactionId + ", cardNo=" + cardNo + ", expMonth=" + expMonth
				+ ", expYear=" + expYear + ", amount=" + amount + ", flightUser=" + flightUser + "]";
	}
	
	
	
	
	

}
