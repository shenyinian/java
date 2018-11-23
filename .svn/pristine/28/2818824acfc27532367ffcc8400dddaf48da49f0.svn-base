package com.imin.domain;

import java.util.List;

/**
 * class：分页
 * author：patmiu
 * time：2018年9月29日下午4:50:48
 */
public class Page<T> {
	// 总的条数
	private Integer total;
	// 每页多少条数据
	private Integer pageSize = 10;
	// 当前的页数
	private Integer currentPage = 1;
	// 总的页数
	private Integer totalPages;
	// 当前页的数据
	private List<T> rows;
	//当前页面的url
	private String url;
	

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getTotalPages() {
		Integer totalPages = total/pageSize;
		return total%pageSize == 0 ? totalPages : totalPages + 1;
	}

	public void setTotalPages(Integer totalPages) {
		this.totalPages = totalPages;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

}
