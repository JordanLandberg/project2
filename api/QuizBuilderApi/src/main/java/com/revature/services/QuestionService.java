package com.revature.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.revature.models.Question;
import com.revature.repositories.QuestionRepository;

@Service
public class QuestionService {
	
	@Autowired
	private QuestionRepository qr;
	
	public List<Question>findByCategory(String categoryName, int pageAmount) {
		Pageable page = PageRequest.of(0, pageAmount);
		return qr.findRandomQuestions(categoryName, page);
	}

	public Question createQuestion(Question newQuestion) {
		return qr.saveAndFlush(newQuestion);
	}

	public Question updateQuestion(Question updatedQuestion) {
		return qr.saveAndFlush(updatedQuestion);
	}
}
