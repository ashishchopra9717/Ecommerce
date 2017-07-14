package com.niit.controllers;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.configuration.DBConfiguration;
import com.niit.dao.ProductDaoImpl;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.ProductService;
import com.niit.service.ProductServiceImpl;

@Controller
	public class ProductController 
	{
	ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class,ProductServiceImpl.class);
    
    ProductService productService=(ProductService)context.getBean("productServiceImpl");
    
	@RequestMapping("/getproductform")

	public String getproductform(Model model)
	{
		model.addAttribute("product",new Product());
		List<Category> categories=productService.getAllCategories();
		   model.addAttribute("categories");
		
		return "productform";
		
	}
	@RequestMapping("/saveProduct")

	public String SaveProduct(@ModelAttribute(name="product") Product product)
	{
		productService.saveProduct(product);
		
		return"success";
		}
	
	@RequestMapping("/getallproducts")
	public String getAllProducts(Model model)
	{
		List<Product> products=productService.getAllProducts();
		model.addAttribute("product",products);
		return "productlist";
		
	}
	
	@RequestMapping("/all/product/viewproduct/{id}")
	
	public String getProductById(@PathVariable int id,Model model)
	{
		Product product= productService.getProductById(id);
		return "viewproduct";
	}
	
   @RequestMapping("/admin/deleteproduct/{id}")
	
	public String deleteProduct(@PathVariable int id)
	{
		 productService.deleteProduct(id);
		return "redirect:/getallproducts";
	}

   @RequestMapping("/admin/geteditform/{id}")
   
   public String getEditForm(@PathVariable int id,Model model)
   {
   
   Product product = productService.getProductById(id);
   
   model.addAttribute("productObj,product");
   
   List<Category> categories=productService.getAllCategories();
   model.addAttribute("categories");
   return "editform";
   }
   
   @RequestMapping("/admin/product/editproduct")
   
   public String editProduct(@ModelAttribute(name="productObj") Product product)
   {
	   productService.editProduct(product);
	   
	   return "redirect:/all/product/getallproducts";
   }
   
}

