package com.studymeet.user.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.studymeet.user.service.UserService;

@Controller
public class UserController {

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/login")
    public String login() {
        return "user/loginForm";
    }
    
    @RequestMapping("/signin")
    public void signin() {
    	// userService.userLogin(id, password)
    }

}
