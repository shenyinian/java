package com.imin.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.imin.dao.ICreditDao;
import com.imin.domain.Book;
import com.imin.domain.Category;
import com.imin.domain.Order_details;
import com.imin.domain.Orders;
import com.imin.utils.DButil;

public class CreditDaoImpl implements ICreditDao {
	
	//我的积分
	
	public List<Book> selectMycredit(Integer cid) throws SQLException{
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		System.out.println(cid);
		String sql = "SELECT book.name,book.imgurl,book.credit FROM book INNER JOIN order_details ON (book.bid = order_details.bid) INNER JOIN orders ON (order_details.oid = orders.oid AND orders.state=1) WHERE cid = ?";
		List<Book> list = qr.query(sql, new BeanListHandler<Book>(Book.class),cid);
		return list;
		
	}

	
	

	
	

	

}
