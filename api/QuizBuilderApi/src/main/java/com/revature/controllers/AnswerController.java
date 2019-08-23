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

import com.revature.models.Answer;
import com.revature.services.AnswerService;

@RestController
@RequestMapping("/answers")
public class AnswerController {
	
	@Autowired
	private AnswerService as;

	@GetMapping("/question/{questionId}")
	public List<Answer> findByQuestionId(@PathVariable int questionId) {
		return as.findByQuestionId(questionId);
	}
	@PostMapping
	public Answer createAnswer(@RequestBody Answer newAnswer) {
		return as.createAnswer(newAnswer);
	}
}