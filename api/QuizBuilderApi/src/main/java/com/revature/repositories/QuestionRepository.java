package com.revature.repositories;

import java.util.List;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.revature.models.Question;

public interface QuestionRepository extends JpaRepository<Question, Integer>{

	@Query(value="FROM Question q WHERE q.categoryId.categoryName =  :categoryName AND q.statusId.statusId = 2 ORDER BY RAND()")
	List<Question> findRandomQuestions(String categoryName, Pageable amount);
	
	List<Question> findByStatusIdStatusName(String statusName);
	
}
