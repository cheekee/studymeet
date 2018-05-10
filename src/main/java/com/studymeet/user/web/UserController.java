package com.studymeet.user.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.studymeet.user.dto.UserDto;
import com.studymeet.user.mapper.UserMapper;
import com.studymeet.user.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Resource(name="com.studymeet.user.mapper.UserMapper")
	UserMapper userMapper;

	// Move Login Page
	@RequestMapping("/signin")
	public String signIn() {
		return "user/loginForm";
	}

	// Execute Login Process 
	@RequestMapping(value="/exesignin", method=RequestMethod.POST)
	public void exeSignIn(HttpServletRequest request) {
		String id = (String) request.getParameter("inputId");
		String password = (String) request.getParameter("inputPassword");
		
		boolean isSuccessedLogin = userService.userLogin(id, password);
		
		if(isSuccessedLogin){
		} else {
		}
		
	}
	
	// Move Sign Up page
	@RequestMapping(value="/signup")
	public String signUp() {
		return "user/joinForm";
	}
	
	// Execute Sign Up Process
	@RequestMapping(value="/exesignup", method=RequestMethod.POST)
	public String exeSignUp(HttpServletRequest request) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("id", request.getParameter("userId"));
		params.put("password", request.getParameter("password"));
		params.put("name", request.getParameter("userName"));
		params.put("gender", request.getParameter("gender"));
		params.put("address", request.getParameter("address"));
		params.put("phone", request.getParameter("phone"));
		
		userService.createUser(params);
		
		return "user/joinForm";
	}
	
	// Check Duplicated ID
	@RequestMapping(value="/checkId")
	public void checkDuplicatedId(@RequestParam("id") String memberId, HttpServletResponse response) {
		System.out.println("check....");
		boolean hasDuplicatedId = userService.checkDuplicatedId(memberId);
		
		JSONObject jsonObj=new JSONObject();

		try {
			jsonObj.put("result", hasDuplicatedId);
			System.out.println("jsonObj : " + jsonObj.toString());
			PrintWriter out = response.getWriter();
			out.print(jsonObj.toString()); 
		} catch (JSONException | IOException e) {
			e.printStackTrace();
		}

	}

}
