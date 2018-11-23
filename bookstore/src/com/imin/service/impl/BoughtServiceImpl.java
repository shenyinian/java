package com.imin.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.imin.dao.impl.BoughtDaoImpl;
import com.imin.domain.Book;
import com.imin.domain.Order_details;

public class BoughtServiceImpl {

	public List<Order_details> selectBought1(Integer cid) throws SQLException{
		return new BoughtDaoImpl().selectBought1(cid);
	}
}
