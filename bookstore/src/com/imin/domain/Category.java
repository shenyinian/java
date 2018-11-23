package com.imin.domain;

import java.util.List;

/**
 * class：书籍分类
 * author：patmiu
 * time：2018年9月29日下午4:58:36
 */
public class Category {
	//分类id
	private Integer category_id;
	//分类名称
	private String category_name;
	//分类层次: 一级:0   二级:10
	private String category_level;
	//分类的父id
	private Integer category_pid;
	//分类的url
	private String category_url;
	//分类的排序
	private Integer order_num;
	//子分类
	private List<Category> children;
	
	public List<Category> getChildren() {
		return children;
	}
	public void setChildren(List<Category> children) {
		this.children = children;
	}
	public Integer getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getCategory_level() {
		return category_level;
	}
	public void setCategory_level(String category_level) {
		this.category_level = category_level;
	}
	public Integer getCategory_pid() {
		return category_pid;
	}
	public void setCategory_pid(Integer category_pid) {
		this.category_pid = category_pid;
	}
	public String getCategory_url() {
		return category_url;
	}
	public void setCategory_url(String category_url) {
		this.category_url = category_url;
	}
	public Integer getOrder_num() {
		return order_num;
	}
	public void setOrder_num(Integer order_num) {
		this.order_num = order_num;
	}
	public Category() {
		super();
	}
	

}
