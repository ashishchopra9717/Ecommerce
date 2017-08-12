package com.niit.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping({"/","/home"})
	public  String homePage(HttpSession session)
	{
		session.setAttribute("products", productService.getAllProducts());
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
}
