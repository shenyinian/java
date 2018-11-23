package com.imin.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import com.imin.dao.ICartDao;
import com.imin.domain.Book;
import com.imin.domain.Shopping_cart;
import com.imin.utils.DButil;

public class CartDaoImpl implements ICartDao{

	//查询购物车数量
	public Integer selectCartBooksCount(Integer cid) throws SQLException{
		String sql = "SELECT SUM(buynum) FROM shopping_cart WHERE cid = ?";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		//查询单行单列的数据用new ScalarHandler
		Number count = (qr.query(sql, new ScalarHandler<Long>(),cid));
		return  count.intValue();
	}

	//查询购物车内容
	public List<Shopping_cart> listCartBook(Integer cid) throws SQLException {
		String sql = "SELECT * FROM shopping_cart WHERE cid = ?";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		List<Shopping_cart> list = qr.query(sql, new BeanListHandler<Shopping_cart>(Shopping_cart.class),cid);
		return list;
	}

	public Shopping_cart selectCartBook(Integer id) throws SQLException {
		String sql = "SELECT * FROM shopping_cart WHERE id = ?";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		Shopping_cart book = qr.query(sql, new BeanHandler<Shopping_cart>(Shopping_cart.class),id);
		return book;
	}
	
	public Shopping_cart selectCartBook(String bid) throws SQLException {
		String sql = "SELECT * FROM shopping_cart WHERE bid = ?";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		Shopping_cart book = qr.query(sql, new BeanHandler<Shopping_cart>(Shopping_cart.class),bid);
		return book;
	}
	
	public Integer updateCartBook(Integer buynum,Double amount,Integer id) throws SQLException {
		String sql = "UPDATE shopping_cart SET buynum = ?,amount = ? WHERE id = ?";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		int update = qr.update(sql, buynum,amount,id);
		return update;
	}
	
	public Integer addCartBook(Integer buynum,Double amount,Integer cid,Double unitprice,String bid,String bname,String imgurl) throws SQLException {
		String sql = "insert into shopping_cart(cid,bid,buynum,amount,unitprice,bname,imgurl)" +
				"values(?,?,?,?,?,?,?)";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		int update = qr.update(sql, cid,bid,buynum,amount,unitprice,bname,imgurl);
		return update;
	}
	
	public Integer deleteCartBook(Integer id) throws SQLException {
		String sql = "DELETE FROM shopping_cart WHERE id = ?";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		int update = qr.update(sql,id);
		return update;
	}
}
