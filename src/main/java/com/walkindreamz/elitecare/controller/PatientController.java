package com.walkindreamz.elitecare.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.walkindreamz.elitecare.model.Patient;
import com.walkindreamz.elitecare.service.PatientService;

@Controller
public class PatientController {
	
	@Autowired
	private PatientService patientService;
	
	@RequestMapping(path = "/patient/create", method = RequestMethod.GET)
	public String create(Model model) {
		model.addAttribute("patient", new Patient());
		return "patient-n";
	}   
	@RequestMapping(path = "/patient/create", method = RequestMethod.POST)
	public String create(@ModelAttribute("patient") Patient patient) {
		patientService.create(patient);
		return "redirect:/patient/create";
	}   
	
	@RequestMapping(path = "/test", method = RequestMethod.GET)
	public String test() {
		return "test";
	}   
}
