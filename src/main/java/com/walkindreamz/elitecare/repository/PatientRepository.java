package com.walkindreamz.elitecare.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.walkindreamz.elitecare.model.Patient;

@Repository
public class PatientRepository {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private static final String INSERT_SQL = "insert into patient (name, phone, dob, gender) values (?, ?, ?, ?)";
	
	public void create(Patient patient) {
		jdbcTemplate.update(INSERT_SQL, patient.getName(), patient.getPhone(), patient.getDob(), patient.getGender());
	}

}
