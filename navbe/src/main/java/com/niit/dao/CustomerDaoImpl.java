package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Authorities;
import com.niit.model.Customer;
import com.niit.model.User;

@Repository
public class CustomerDaoImpl implements CustomerDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public CustomerDaoImpl()
	{
		System.out.println("CustomerDaoImpl object is created");
	}

	public void registerCustomer(Customer customer) {
		
Authorities authorities= new Authorities();
		
		authorities.setRole("ROLE_USER");
		
		User user= customer.getUser();
		
		user.setEnabled(true);
		
		String username=customer.getUser().getUsername();
		
		authorities.setUsername(username);
		
		Session session= sessionFactory.getCurrentSession();
		
		session.save(authorities);
		
		session.save(customer);
		
		
	}

}
