package com.dao;

import java.util.List;

import com.model.Category;

public interface CategoryDAO {

	public boolean addCategory(Category category);

	public List<Category> retrieveCategory();

	public Category getCategory(int catId);

	public boolean updateCategory(Category category);

	public boolean deleteCategory(Category category);

}
