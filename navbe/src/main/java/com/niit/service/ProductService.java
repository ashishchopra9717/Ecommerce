package com.niit.service;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.Product;

public interface ProductService 
{

	public void saveProduct(Product product);

	List<Product> getAllProducts();
	
	Product getProductById(int id);
	public void deleteProduct(int id);
	
	public void updateProduct(Product product);
	
	List<Category> getAllCategories();
	
	public List<Product> getProductByCategory(int cid);
}
