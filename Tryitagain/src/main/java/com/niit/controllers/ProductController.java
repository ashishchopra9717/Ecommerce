package com.niit.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.ProductService;

@Controller
	public class ProductController 
	{
	@Autowired
    ProductService productService;
    
	@RequestMapping("/admin-getproductform")

	public String getproductform(Model model)
	{
		List<Category> categories=productService.getAllCategories();
		   model.addAttribute("categories",categories);
		model.addAttribute("product",new Product());
		
		
		return "productform";
		
	}
	@RequestMapping("/saveProduct")

	public String SaveProduct(@Valid @ModelAttribute(name="product") Product product,BindingResult result,Model model)
	{
		if(product.getQuantity()==0)
		{
			List<Category> categories=productService.getAllCategories();
			   model.addAttribute("categories",categories);
			return "productform";
		}
		if(result.hasErrors())
			{
			List<Category> categories=productService.getAllCategories();
			   model.addAttribute("categories",categories);
				return "productform";
			}
		productService.saveProduct(product);
		
		MultipartFile image=product.getImage();
		
		Path path= Paths.get("C:\\Users\\user\\git\\ecommerce\\Tryitagain\\src\\main\\webapp\\WEB-INF\\images\\"+product.getId()+".png");
		
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return"redirect:/getallproducts";
		}
	
	@RequestMapping("/getallproducts")
	public String getAllProducts(Model model)
	{
		List<Product> products=productService.getAllProducts();
		model.addAttribute("product",products);
		return "productlist";
		
	}
	
	@RequestMapping("/viewproduct{id}")
	
	public String getProductById(@PathVariable int id,Model model)
	{
		Product product= productService.getProductById(id);
		model.addAttribute("product",product);
		return "viewproduct";
	}
	
   @RequestMapping("/deleteproduct/{id}")
	
	public String deleteProduct(@PathVariable int id)
	{
		 productService.deleteProduct(id);
		 
		 Path path= Paths.get("C:\\Users\\user\\git\\ecommerce\\Tryitagain\\src\\main\\webapp\\WEB-INF\\images\\"+id+".png");
		 
		 if(Files.exists(path))
		 {
			 try {
				Files.delete(path);
			} catch (IOException e) {
				e.printStackTrace();
			}
		 }
				
		return "redirect:/getallproducts";
	}

   @RequestMapping("/geteditform{id}")
   
   public String getEditForm(@PathVariable int id,Model model)
   {
	   Product product = productService.getProductById(id);
	   model.addAttribute("productObj",product);
	List<Category> categories=productService.getAllCategories();
	model.addAttribute("categories",categories);
  
   return "editform";
   }
   
   @RequestMapping("/editproduct")  
   public String editProduct(@Valid @ModelAttribute(name="productObj") Product product,BindingResult result,Model model)
   {
	   if(result.hasErrors())
		{
		List<Category> categories=productService.getAllCategories();
		   model.addAttribute("categories",categories);
		
		   return "editform";
		}
	   
	   productService.updateProduct(product);
	   
	   MultipartFile image=product.getImage();
		
		Path path= Paths.get("C:\\Users\\user\\git\\ecommerce\\Tryitagain\\src\\main\\webapp\\WEB-INF\\images\\"+product.getId()+".png");
	   
	   
	   try {
		image.transferTo(new File(path.toString()));
	} catch (IllegalStateException e) {
		e.printStackTrace();
	} catch (IOException e) {
		e.printStackTrace();
	}
	   return "redirect:/getallproducts";
   }
   


   @RequestMapping("searchbyCategory{cid}")
	public String selectByCategory(@PathVariable int cid,Model model)
	{
		List<Product> products = productService.getProductByCategory(cid);
	    model.addAttribute("product",products);
	    return "productlist";
	}
   
   @RequestMapping("/searchproduct")
	public String searchProduct(@RequestParam String SearchKeyword,Model model)
	{
		List <Product> products =productService.getAllProducts();
		model.addAttribute("product",products);
		 
		 model.addAttribute("searchCondition",SearchKeyword);		
		 return "productlist";
		 
	}
	
}