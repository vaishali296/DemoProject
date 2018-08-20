package com.mvc.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lis.dao.LoginDaoImpl;

@Controller
public class LoginController {
	
	@Autowired
	@Qualifier("LoginDaoImpl")
	private LoginDaoImpl loginDaoImpl;

	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String authUser(HttpServletRequest req,Model model){
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String role=loginDaoImpl.authUser(username, password);
		if(!"fail".equals(role)){
			model.addAttribute("ApplicationMessage", "Hey you are a valid user!, thank you");
			return "home";
		}
		else{
			model.addAttribute("ApplicationMessage", "Sorry you are not a valid user!");
			return "login";
		}
	}
}
