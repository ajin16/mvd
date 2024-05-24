package com.vehicle.mvd.controller;

import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RestController;
import org.springframework.stereotype.Controller;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/home")
	public String home() {
	    return "home";
	}
	
	@GetMapping("/all")
    public String allReg() {
        return "allReg";
    }
	
	@GetMapping("/search")
    public String search() {
        return "search";
    }
	
	@GetMapping("/registration")
	public String registration() {
		return "registration";
	}
	
	@GetMapping("/transfer")
	public String transfer() {
		return "transfer";
	}
	
}