package com.revature.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.revature.models.Answer;
import com.revature.repositories.AnswerRepository;

@Service
public class AnswerService {
	
	@Autowired
	private AnswerRepository ar;

	public List<Answer> findByQuestionId(int questionId) {
		return ar.findByQuestionIdQuestionId(questionId);
	}

}
