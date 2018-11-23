package com.imin.dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import com.imin.dao.IOrderDao;
import com.imin.utils.DButil;

public class OrderDaoImpl implements IOrderDao{

	public void addOrder(String oid,Integer cid, Integer sid, Integer ocount, Double totalprice) throws SQLException {
		String sql = "insert into orders(oid,cid,sid,ocount,totalprice) values(?,?,?,?,?)";
		Object[] params = {oid,cid,sid,ocount,totalprice};
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		qr.update(sql, params);
	}
	
	public void addOrder_details(String id,String oid,String bid,Integer bcount) throws SQLException {
		String sql = "insert into order_details(id,oid,bid,bcount) values(?,?,?,?)";
		Object[] params = {id,oid,bid,bcount};
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		qr.update(sql, params);
	}
}
