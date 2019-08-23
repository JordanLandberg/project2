package com.revature.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.revature.models.User;
import com.revature.services.UserService;

@RestController
@RequestMapping("/users")
public class UserController {

	@Autowired
	private UserService us;
	
	
	// made sess
	@GetMapping()
	public List<User> findAll(HttpSession sess) {
//		if (sess.getAttribute("user") !=null)
		return us.findAll();
			//return null;
		
	}
	
	@GetMapping(value="/{id}")
	public User findById(@PathVariable int id, HttpSession sess) {
//		if (sess.getAttribute("user") !=null)
		return us.findById(id);
//		return null;
	}

	@PutMapping(produces = { "application/json" })
	public User updateUser(@RequestBody User updatedUser, HttpSession sess) {
//		if (sess.getAttribute("user") !=null)
		return us.updateUser(updatedUser);
//		 return null;
	}

	@PostMapping(produces = { "application/json" })
	public User createUser(@RequestBody User newUser) {
		return us.createUser(newUser);
	}
}
