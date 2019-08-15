package com.revature.controllers;

import java.util.List;

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
	
	@GetMapping
	public List<User> findAll() {
		return us.findAll();
	}
	
	@GetMapping("/{id}")
	public User findById(@PathVariable int id) {
		return us.findById(id);
	}
	
	@PutMapping
	public User updateUser(@RequestBody User updatedUser) {
		return us.updateUser(updatedUser);
	}
	
	@PostMapping
	public User createUser(@RequestBody User newUser) {
		return us.createUser(newUser);
	}
}
