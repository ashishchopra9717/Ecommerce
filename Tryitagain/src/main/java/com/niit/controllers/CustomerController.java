package com.niit.controllers;

import javax.validation.Valid;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.configuration.DBConfiguration;
import com.niit.dao.CustomerDaoImpl;
import com.niit.model.Customer;
import com.niit.service.CustomerService;
import com.niit.service.CustomerServiceImpl;

@Controller
public class CustomerController {
	
    ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,CustomerDaoImpl.class,CustomerServiceImpl.class);
    
	CustomerService customerService=(CustomerService)context.getBean("customerServiceImpl"); 

	
	@RequestMapping("/registrationform")
	public String getRegistrationForm(Model model) {
		model.addAttribute("customer", new Customer());

		return "registrationform";
	}

	@RequestMapping("/savecustomer")

	public String registerCustomer(@Valid @ModelAttribute(name="customer") Customer customer, BindingResult result) {
		if (result.hasErrors()) {
			return "registrationform";
		}
		customerService.registerCustomer(customer);
		return "index";
	}

}
