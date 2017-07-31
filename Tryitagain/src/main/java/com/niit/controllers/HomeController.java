package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public  String homePage()
	{
		return "index";
	}
	
	@RequestMapping("/aboutus")
	public  String about()
	{
		return "aboutus";
	}
	
	@RequestMapping("/index")
	public  String homePage1()
	{
		return "index";
	}
	
	@RequestMapping("/login")
	public  String login()
	{
		return "login";
	}
	
	@RequestMapping("/register")
	public  String register()
	{
		return "registrationform";
	}
	
}
