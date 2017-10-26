package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/home")
	public String home(){
		return "home";
	}
	
	@RequestMapping("/nav")
	public String nav(){
		return "nav";
	}
	
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
	@RequestMapping("/signup")
	public String signup(){
		return "signup";
	}

	@RequestMapping("/about")
	public String about(){
		return "about";
	}
	
	@RequestMapping("/contact")
	public String contact(){
		return "contact";
	}
	
	@RequestMapping("/newproduct")
	public String newproduct(){
		return "productForm";
	}
	
	
	
}
