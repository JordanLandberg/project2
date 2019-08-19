package com.revature.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.revature.dtos.Credential;
import com.revature.models.User;
import com.revature.services.UserService;

@RestController
public class AuthController {

	private HttpSession sess;

	@Autowired
	private UserService us;

	@PostMapping("/login")
	public User login(@RequestBody Credential cred, HttpServletRequest req) {
		sess = req.getSession();
		sess.setAttribute("user", cred.getEmail());
		return us.login(cred);
	}

	@GetMapping("/login")
	public String logout(HttpSession sess) {
		sess.invalidate();
		return "redirect:localhost:8012/login";
	}

	@GetMapping("/check-auth")
	public User checkAuth(HttpServletRequest req) {
		return (User) req.getSession().getAttribute("user");
	}

}
