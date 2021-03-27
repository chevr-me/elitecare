package com.walkindreamz.elitecare.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Patient {

	private String name;
	
	private String phone;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dob;
	
	private String gender;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
}
