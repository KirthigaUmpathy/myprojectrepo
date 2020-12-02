package com.cg.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cg.model.Policy;
import com.cg.model.Users;
import com.cg.service.LService;

@Controller
//@RequestMapping("/login")
public class LoginController {
	
	@Qualifier(value = "service")
	@Autowired
	private LService service;
	
	private static Logger myLogger =  Logger.getLogger(LoginController.class.getName());
	
	@RequestMapping(value="/login.htm", method=RequestMethod.GET)
	public String userLogin() {
		
		return "login";
	}
	
	@RequestMapping(value="/login.htm", method=RequestMethod.POST)
	public String userLoginValidation(String username,String password,HttpServletRequest req,Model model)
	{
		
		
		/*Users u=service.validate(username, password);
		model.addAttribute("user",u);	
		List<Users> list=service.getUsers();
		for(Users u:list) {
		if(u.getUserName().equals(username) && u.getPassWord().equals(password)) {*/
		
				Users user=service.validateLogin(username, password);
				
				if(user!=null) 
				{ 
					myLogger.info("user object: Logged in as "+user.getRoleCode());
					
//					HttpSession session=req.getSession(true);
//					session.setAttribute("currentUser", user);
					
					model.addAttribute("user",user);
					
					
					if(user.getRoleCode().equals("Admin"))
						return "Admin";
					
					else if(user.getRoleCode().equals("Agent"))
						return "Agent";
					
					if(user.getRoleCode().equals("User"))
						return "User";
				}
				
				return "error";  
			}
	
		
	}
