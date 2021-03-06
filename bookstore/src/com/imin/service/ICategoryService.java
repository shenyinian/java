package com.imin.service;

import java.sql.SQLException;
import java.util.List;

import com.imin.domain.Category;

public interface ICategoryService {

	//递归查询所有分类菜单
		List<Category> selectCategoryDeep() throws SQLException;
		Category getCategoryById(int category_id) throws SQLException;
}
