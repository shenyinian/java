package com.imin.service;

import java.sql.SQLException;
import java.util.List;

import com.imin.domain.Shopping_cart;

public interface ICartService {
	
	//查询购物车数量
	Integer selectCartBooksCount(Integer cid)  throws SQLException;
	//查询购物车内容
	List<Shopping_cart> listCartBook(Integer cid) throws SQLException;

	Shopping_cart selectCartBook(Integer id) throws SQLException;
	
	Shopping_cart selectCartBook(String bid) throws SQLException;
	Integer updateCartBook(Integer buynum,Double amount,Integer id) throws SQLException;
	
	Integer deleteCartBook(Integer id) throws SQLException;
	Integer addCartBook(Integer buynum,Double amount,Integer cid,Double unitprice,String bid,String bname,String imgurl) throws SQLException;
}
