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

import com.revature.models.Question;
import com.revature.services.QuestionService;

@RestController
@RequestMapping("/questions")
public class QuestionController {
	
	@Autowired
	private QuestionService qs;
	
	@GetMapping("/category/{categoryName}/amount/{pageAmount}")
	public List<Question> findByCategoryName(@PathVariable String categoryName, @PathVariable int pageAmount) {
		return qs.findByCategory(categoryName, pageAmount);
	}
	
	@GetMapping("/status/{statusName}")
	public List<Question> findByStatusIdStatusName(@PathVariable String statusName) {
		return qs.findByStatusIdStatusName(statusName);
	}
	
	@PutMapping
	public Question updateQuestion(@RequestBody Question updatedQuestion) {
		return qs.updateQuestion(updatedQuestion);
	}
	
	@PostMapping
	public Question createQuestion(@RequestBody Question newQuestion) {
		return qs.createQuestion(newQuestion);
	}
}
