package com.niit.navbe;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBConfiguration;
import com.niit.dao.ProductDaoImpl;
import com.niit.model.Product;
import com.niit.service.ProductService;
import com.niit.service.ProductServiceImpl;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
       
        
       
        ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class,ProductServiceImpl.class);
       
        ProductService productService=(ProductService)context.getBean("productServiceImpl");
        
        Product product = new Product();
        
        product.setId(2);
        product.setProductName("Pen");
        product.setPrice(100);
        product.setQuantity(10);
        product.setDescription("Its a pen");
        
        productService.saveProduct(product);
        
        System.out.println( "Hello World!" );
    }
}
