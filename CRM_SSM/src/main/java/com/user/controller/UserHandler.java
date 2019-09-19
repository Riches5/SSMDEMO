package com.user.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.user.service.IUserService;

@Controller
@RequestMapping(value="/user")
public class UserHandler {
	
	@Resource
	private IUserService  service;
	
	@RequestMapping("/login.do")
	public String Login(String username,String userpwd) throws Exception{
		
		return service.userLogin(username, userpwd)?
				"forward:/sale/list.jsp":
					"redirect:/login.html";
		
	}
	
	@RequestMapping("/query.do")
	public String queryall(Model m,HttpSession s) throws Exception{		
		s.setAttribute("rs",service.queryUserInfo());
		return "redirect:/list.jsp";
		
	}
	
	@RequestMapping("/query2.do")
	public String queryall2(Model m) throws Exception{		
		m.addAttribute("rs",service.queryUserInfo());
		return "list";
		
	}
	
	

}
