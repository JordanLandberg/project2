package com.revature.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.revature.dtos.Credential;
import com.revature.models.User;
import com.revature.repositories.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository ur;

	public List<User> findAll() {
		return ur.findAllByOrderByUserIdAsc();
	
	}
	
	public User findById(int userId) {
		return ur.findByUserId(userId);
	}

	@Transactional
	public User updateUser(User updatedUser) {
		return ur.saveAndFlush(updatedUser);
	}
	
	public User login(Credential cred) {
		User user = ur.findByEmailAndPassword(cred.getEmail(), cred.getPassword());

		if (user != null) {
			HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
					.getRequest();
			req.getSession().setAttribute("user", user);
		}
		return user;
	}

	public User createUser(User user) {
		return ur.saveAndFlush(user);
	}

	

}
