package com.imin.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.imin.dao.ICategoryDao;
import com.imin.domain.Category;
import com.imin.utils.DButil;

public class CategoryDaoImpl implements ICategoryDao {

	//查询所有菜单以及子菜单
	public List<Category> selectCategoryDeep() throws SQLException {
		String sql = "SELECT * FROM category";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		List<Category> list = qr.query(sql, new BeanListHandler<Category>(Category.class));
		List<Category> categories = getCategoryDeep(list, "0");
		return categories;
	}

	/**
	 * 递归查询一级分类以及一级分类对应的子分类
	 * 
	 * @param list:所有的分类
	 * @param level:分类的层级
	 */
	private List<Category> getCategoryDeep(List<Category> all, String level) {
		// 存放根分类
		List<Category> root = new ArrayList<Category>();
		// 先得到所有的根分类
		for (Category c : all) {
			if (c.getCategory_level().equals(level)) {
				root.add(c);
			}
		}
		// 得到所有子分类
		for (Category c : root) {
			c.setChildren(getDeepChildren(all, c.getCategory_id()));
		}
		if (root.size() > 1) {
			sortCategory(root);
		}

		return root;
	}

	// 排序
	private void sortCategory(List<Category> root) {
		Collections.sort(root, new Comparator<Category>() {
			// 根据分类的order_num排序
			public int compare(Category c1, Category c2) {
				return c1.getOrder_num() - c2.getOrder_num();
			}
		});
	}

	/**
	 * @param all
	 *            所有分类
	 * @param parentId
	 *            父级分类id
	 * @return 父级分类id的所有子分类
	 */
	private List<Category> getDeepChildren(List<Category> all, Integer parentId) {
		List<Category> children = new ArrayList<Category>();
		for (Category c : all) {
			// 如果此分类的父级分类id和参数parentId相等,说明是此分类为parentId的子分类
			if (parentId != null && parentId == c.getCategory_pid()) {
				children.add(c);
			}
		}
		// 排序
		if (children.size() > 1) {
			sortCategory(children);
		}

		// 继续递归查询子分类的子分类
		for (Category c : children) {
			c.setChildren(getDeepChildren(all, c.getCategory_id()));
		}

		return children;
	}
	
	public Category getCategoryById(int category_id) throws SQLException {
		String sql = "SELECT * FROM category WHERE category_id =?";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		Category category = qr.query(sql,new BeanHandler<Category>(Category.class),category_id);
		return category;
	}

}
