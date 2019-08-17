package com.revature.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping(value="/logout")
public class LogoutController {

// made the logout
	@GetMapping 
	public String logout(HttpSession sess) {
	sess.invalidate();
	return "redirect:localhost:8012/login" ;
	}
	
}
