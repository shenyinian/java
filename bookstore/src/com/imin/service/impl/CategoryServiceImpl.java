package com.imin.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.imin.dao.impl.CategoryDaoImpl;
import com.imin.domain.Category;
import com.imin.service.ICategoryService;

public class CategoryServiceImpl implements ICategoryService {

	public List<Category> selectCategoryDeep() throws SQLException {
		return new CategoryDaoImpl().selectCategoryDeep();
	}

	public Category getCategoryById(int category_id) throws SQLException {
		
		return new CategoryDaoImpl().getCategoryById(category_id);
	}
}
