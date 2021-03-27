package com.walkindreamz.elitecare.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.walkindreamz.elitecare.model.Patient;
import com.walkindreamz.elitecare.repository.PatientRepository;

@Service
public class PatientService {
	
	@Autowired
	private PatientRepository patientRepository;
	
	public void create(Patient patient) {
		patientRepository.create(patient);
	}
}
