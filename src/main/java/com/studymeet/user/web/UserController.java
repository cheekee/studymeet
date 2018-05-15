package com.studymeet.user.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;
	
	@Autowired
	private OAuth2Parameters googleOAuth2Paramegers;
	
	@Resource(name="com.studymeet.user.mapper.UserMapper")
	UserMapper userMapper;

	// Move Login Page
	@RequestMapping("/signin")
	public String signIn() {
		return "user/loginForm";
	}

	// Execute Login Process 
	@RequestMapping(value="/exesignin", method=RequestMethod.POST)
	public void exeSignIn(HttpServletRequest request, HttpServletResponse response) {
		try {
			String id = (String) request.getParameter("inputId");
			String password = (String) request.getParameter("inputPassword");
			
			boolean isSuccessedLogin = userService.userLogin(id, password);
			
			HttpSession session = request.getSession();
			if(isSuccessedLogin){
				session.setAttribute("hasSession", isSuccessedLogin);
				session.setAttribute("loginId", id);
			}
			
			System.out.println(session.getAttribute("loginId"));
			JSONObject jsonObj = new JSONObject();
			
			jsonObj.put("result", isSuccessedLogin);
			
			response.setContentType("application/json; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.write(jsonObj.toString());
			
		} catch (JSONException | IOException e) {
			e.printStackTrace();
		}
		
	}
	
	// Move Sign Up page
	@RequestMapping(value="/signup")
	public String signUp() {
		return "user/joinForm";
	}
	
	// Execute Sign Up Process
	@RequestMapping(value="/exesignup", method=RequestMethod.POST)
	public String exeSignUp(@ModelAttribute UserDto user, HttpServletRequest request) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("id", request.getParameter("id"));
		params.put("password", request.getParameter("password"));
		params.put("name", request.getParameter("name"));
		params.put("gender", request.getParameter("gender"));
		params.put("address", request.getParameter("address"));
		params.put("phone", request.getParameter("phone"));
		
		userService.createUser(user);
		
		return "user/joinForm";
	}
	
	// Execute Sign Up Process
	@RequestMapping(value="/logout")
	public String logOut(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session != null){
			session.invalidate();
		}
		
		return "index";
	}
	
	// Check Duplicated ID
	@RequestMapping(value="/checkId", method=RequestMethod.POST)
	public void checkDuplicatedId(@RequestParam("userId") String memberId, HttpServletResponse response) {
		boolean hasDuplicatedId = userService.checkDuplicatedId(memberId);
		
		try {
			JSONObject jsonObj = new JSONObject();
			jsonObj.put("result", hasDuplicatedId);
			
			response.setContentType("application/json; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.write(jsonObj.toString());
			
		} catch (JSONException | IOException e) {
			e.printStackTrace();
		}

	}

}
