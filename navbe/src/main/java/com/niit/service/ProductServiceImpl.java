package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ProductDao;
import com.niit.model.Category;
import com.niit.model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService
{
	
	ProductServiceImpl()
	{
		System.out.println("Product Service Impl object created");
	}
	
 @Autowired
 
 private ProductDao productDao;
 
 public void saveProduct(Product product)
 {
	 productDao.saveProduct(product);
 }
 
 public List<Product> getAllProducts()
 {
	 return productDao.getAllProducts();
 }
 

 public void deleteProduct(int id) 
 {
 	Product product=productDao.getProductById(id);
	productDao.deleteProduct(product);
 }

public Product getProductById(int id) {
	
	return productDao.getProductById(id);
}

public void editProduct(Product product) 
{
	productDao.editProduct(product);
	
}

public List<Category> getAllCategories() 
{
	return productDao.getAllCategories();
}
}