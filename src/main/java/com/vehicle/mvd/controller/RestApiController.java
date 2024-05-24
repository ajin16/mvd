package com.vehicle.mvd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import com.vehicle.mvd.entity.Registration;
import com.vehicle.mvd.repository.RegistrationRepository;


@RestController
public class RestApiController {
	
	@Autowired
	RegistrationRepository repo;
	
	@GetMapping("/data/allReg")
	public List<Registration> getAllRegistration()
	{
		List<Registration> reg = repo.findAll();
		return reg;
	}
	
	@GetMapping("/data/registration/{regno}")
	public Registration getRegistration(@PathVariable String regno) {
		Registration registration = repo.findById(regno).get();
		
		return registration;
	}
	
	
	@PostMapping("/data/NewReg")
	@ResponseStatus(code=HttpStatus.CREATED)
	public void createRegistration(@RequestBody Registration registration)
	{
		repo.save(registration);
	}

	@PutMapping("/data/update")
	public Registration updateRegistration(@RequestParam String regno, @RequestParam String ownername) {
		Registration registration = repo.findById(regno).get();
		registration.setOwner_name(ownername);
		repo.save(registration);
		return registration;
	}

}
