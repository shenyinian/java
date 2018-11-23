package com.imin.service;

import java.sql.SQLException;
import java.util.List;

import com.imin.domain.Book;

public interface ICreditService {

	List<Book> selectMycredit(Integer cid) throws SQLException;
}
