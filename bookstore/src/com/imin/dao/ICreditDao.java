package com.imin.dao;

import java.sql.SQLException;
import java.util.List;

import com.imin.domain.Book;
import com.imin.domain.Customer;

public interface ICreditDao {
	
	
	List<Book> selectMycredit(Integer cid) throws SQLException;
	
}
