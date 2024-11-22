package com.GRE.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Details {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	
	private String Name;
	private String Examopted;
	private String Marks;
	private String payment;
	
	
	
	

	public Details() {
		
	}
	
	

	public Details(Integer id, String name, String examopted, String marks, String payment) {
		super();
		this.id = id;
		Name = name;
		Examopted = examopted;
		Marks = marks;
		this.payment = payment;
	}



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getExamopted() {
		return Examopted;
	}

	public void setExamopted(String examopted) {
		Examopted = examopted;
	}

	public String getMarks() {
		return Marks;
	}

	public void setMarks(String marks) {
		Marks = marks;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "Details [id=" + id + ", Name=" + Name + ", Examopted=" + Examopted + ", Marks=" + Marks + ", payment="
				+ payment + "]";
	}
	
	
	
	

	
	
	
}
