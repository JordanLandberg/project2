package com.revature.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.revature.models.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	
	List<User> findAllByOrderByUserIdAsc();
	
	User findByEmailAndPassword(String email, String password);
	
	User findUserByUserId(int userId);

}
