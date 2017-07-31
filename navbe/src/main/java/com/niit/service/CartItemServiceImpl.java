package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartItemDao;
import com.niit.model.CartItem;

@Repository
@Service
@Transactional
public class CartItemServiceImpl implements CartItemService {

	@Autowired
	private CartItemDao cartItemDao;
	
	public void addCartItem(CartItem cartItem) 
	{
		cartItemDao.addCartItem(cartItem);
	
	}

	public void removeCartItem(int cartItemId) 
	{
		cartItemDao.removeCartItem(cartItemId) ;		
	}

	public void removeAllCartItem(int cartId) 
	{
		cartItemDao.removeAllCartItem(cartId);
	}

}
