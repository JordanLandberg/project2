package com.revature.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.revature.models.Answer;

public interface AnswerRepository extends JpaRepository<Answer, Integer>{

	List<Answer> findByQuestionIdQuestionId(int questionId);
	
	

}
