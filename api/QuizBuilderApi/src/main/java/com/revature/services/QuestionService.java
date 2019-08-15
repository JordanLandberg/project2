package com.revature.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.revature.models.Question;
import com.revature.repositories.QuestionRepository;

@Service
public class QuestionService {
	
	@Autowired
	private QuestionRepository qr;
	
	public List<Question>findByCategory(String categoryName) {
		return qr.findByCategoryIdCategoryName(categoryName);
	}

	public Question createUser(Question newQuestion) {
		return qr.saveAndFlush(newQuestion);
	}
}
