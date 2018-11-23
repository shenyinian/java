package com.imin.dao;

import java.sql.SQLException;
import java.util.List;

import com.imin.domain.Book;

public interface IBookDao {
	
	List<String> selectPromptByName(String bookName) throws Exception;
	
	List<Book> selectNewest() throws SQLException;
	
	List<Book> selectRecommend() throws SQLException;
	
	List<Book> selectHotSales() throws SQLException;
	
	List<Book> selectDiscount() throws SQLException;
	
	List<Book> selectBooksByCategory(Book book, String level,Integer pageSize, Integer currentPage) throws SQLException;
	
	int selectTotalCount(Book book,String level) throws SQLException;
	
	Book findBookDetailById(String bid) throws SQLException;

	List<Book> selectSameGradeById(String bid) throws SQLException;

	List<Book> selectSameBought(String bid) throws SQLException;

	List<Book> selectBooksByName(Book book, Integer pageSize, Integer currentPage) throws SQLException;
}

