package com.imin.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.imin.dao.impl.CartDaoImpl;
import com.imin.domain.Book;
import com.imin.domain.Shopping_cart;
import com.imin.service.ICartService;

public class CartServiceImpl implements ICartService {

	public Integer selectCartBooksCount(Integer cid) throws SQLException {
		return new CartDaoImpl().selectCartBooksCount(cid);
	}

	public List<Shopping_cart> listCartBook(Integer cid) throws SQLException {
		return new CartDaoImpl().listCartBook(cid);
	}
	
	public Shopping_cart selectCartBook(Integer id) throws SQLException {
		return new CartDaoImpl().selectCartBook(id);
	}

	public Shopping_cart selectCartBook(String bid) throws SQLException {
		return new CartDaoImpl().selectCartBook(bid);
	}
	
	public Integer updateCartBook(Integer buynum,Double amount,Integer id) throws SQLException {
		return new CartDaoImpl().updateCartBook(buynum, amount,id);
	}
	
	public Integer addCartBook(Integer buynum,Double amount,Integer cid,Double unitprice,String bid,String bname,String imgurl) throws SQLException{
		return new CartDaoImpl().addCartBook(buynum, amount, cid, unitprice, bid, bname, imgurl);
		
	}
	
	public Integer deleteCartBook(Integer id) throws SQLException{
		return new CartDaoImpl().deleteCartBook(id);
		
	}
}
