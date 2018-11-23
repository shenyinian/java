package com.imin.service;

import java.sql.SQLException;
import java.util.List;

import com.imin.domain.Book;
import com.imin.domain.Page;
import com.imin.vo.DetailPageVo;
import com.imin.vo.IndexVo;

public interface IBookService {

	// 查询首页的数据
	IndexVo selectIndexBooks() throws Exception;

	// 根据书名关键字查询
	List<String> selectPromptByName(String bookName) throws Exception;
	
	// 搜索框
	Page<Book> selectBooksByName(Book book, Integer currentPage) throws SQLException;
	
	// 根据条件分页查询书籍
	Page<Book> selectBooksByCategory(Book book, String level, Integer currentPage) throws SQLException;

	//根据书籍id查询
	DetailPageVo findBookDetailById(String bid) throws SQLException;
}
