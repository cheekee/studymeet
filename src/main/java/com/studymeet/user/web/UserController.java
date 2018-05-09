package com.studymeet.user.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.studymeet.user.mapper.UserMapper;
import com.studymeet.user.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;

	// Move Login Page
	@RequestMapping("/signin")
	public String signIn() {
		return "user/loginForm";
	}

	// Execute Login Process 
	@RequestMapping("/exesignin")
	public void exeSignIn(HttpServletRequest request) {
		String id = (String) request.getParameter("inputId");
		String password = (String) request.getParameter("inputPassword");
		
		boolean isSuccessedLogin = userService.userLogin(id, password);
		
		if(isSuccessedLogin){
		} else {
		}
		
	}
	
	// Move Sign Up page
	@RequestMapping("/signup")
	public String signUp() {
		return "user/joinForm";
	}
	
	// Execute Sign Up Process
	@RequestMapping("/exesignup")
	public String exeSignUp() {
		
		// TODO userService.createUser(userParam)
		
		return "user/joinForm";
	}
	
	// Check Duplicated ID
	@RequestMapping("/checkId")
	public void checkDuplicatedId(HttpServletRequest request) {
		String id = (String) request.getParameter("inputId");
		//boolean hasDuplicatedId = userService.checkDuplicatedId(id);
	}

}
