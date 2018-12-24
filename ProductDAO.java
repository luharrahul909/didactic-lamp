package com.dao;


import java.util.List;

import com.model.Product;

public interface ProductDAO {

	public boolean addProduct(Product product);

	public boolean updateProduct(Product product);

	public List<Product> retrieveProduct();

	public Product getProduct(int productId);

	public boolean deleteProduct(Product product);

	
}
