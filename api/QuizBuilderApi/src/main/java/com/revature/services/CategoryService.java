package com.revature.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.revature.models.Category;
import com.revature.repositories.CategoryRepository;

@Service
public class CategoryService {

	public CategoryRepository cr;

	@Autowired
	public void setCr(CategoryRepository cr) {
		this.cr = cr;
	}
	
	
	public List<Category> getAllCategories(){
		return cr.findAll();		
	}
	
	public Category addCategory(Category c) {
		return cr.saveAndFlush(c);
	}
	
	
}
