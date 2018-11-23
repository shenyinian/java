package com.imin.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.imin.dao.impl.CreditDaoImpl;
import com.imin.domain.Book;

public class CreditServiceImpl {

	

	public List<Book> selectMycredit(Integer cid) throws SQLException{
		return new CreditDaoImpl().selectMycredit(cid);
	}
}
