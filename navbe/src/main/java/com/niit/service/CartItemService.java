package com.niit.service;

import com.niit.model.CartItem;

public interface CartItemService 
{
public void addCartItem(CartItem cartItem);

void removeCartItem(int cartItemId);

void removeAllCartItem(int cartId);
}
