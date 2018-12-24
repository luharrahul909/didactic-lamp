
package com.dao;

import java.util.List;

import com.model.Cart;

public interface CartDAO 
{
	public void insert(Cart cart);
	public List<Cart> findCartById(String userID) ;
	public Cart getCartByID(int cartID,String UserEmail);
	public void deleteCart(int cartID);
	public void update(Cart cr);
}
