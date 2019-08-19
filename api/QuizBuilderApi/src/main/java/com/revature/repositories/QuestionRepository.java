package com.revature.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.revature.models.Question;

public interface QuestionRepository extends JpaRepository<Question, Integer>{

	Page<Question> findByCategoryIdCategoryName(String categoryName, Pageable page);
	
}
