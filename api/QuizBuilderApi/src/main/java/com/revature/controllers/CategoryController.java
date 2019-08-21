package com.revature.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.revature.models.Category;
import com.revature.services.CategoryService;

@RestController
@RequestMapping("/category")
public class CategoryController {
	
	public CategoryService cs;
	
	@Autowired
	public void setCs(CategoryService cs) {
		this.cs = cs;
	}
	
	@GetMapping(consumes= "application/json")
	public List<Category> getAllCategories(){
		return cs.getAllCategories();	
	}
	

	@PostMapping ( produces = "application/json")
	public Category addCategory(@RequestBody Category c) {	
		return cs.addCategory(c);
		
	}
}
