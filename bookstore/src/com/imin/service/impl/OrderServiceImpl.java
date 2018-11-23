package com.imin.service.impl;

import java.sql.SQLException;

import com.imin.dao.impl.OrderDaoImpl;
import com.imin.service.IOrderService;

public class OrderServiceImpl implements IOrderService{

	public void addOrder(String oid,Integer cid, Integer sid, Integer ocount, Double totalprice) throws SQLException{
		new OrderDaoImpl().addOrder(oid, cid, sid, ocount, totalprice);
	}
	
	public void addOrder_details(String id,String oid,String bid,Integer bcount) throws SQLException {
		new OrderDaoImpl().addOrder_details(id, oid, bid, bcount);
	}
}
