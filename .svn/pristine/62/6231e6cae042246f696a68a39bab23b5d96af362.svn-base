package com.imin.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.imin.dao.IBoughtDao;
import com.imin.domain.Book;
import com.imin.domain.Order_details;
import com.imin.utils.DButil;

public class BoughtDaoImpl implements IBoughtDao {
	
	//我的积分

	public List<Order_details> selectBought1(Integer cid) throws SQLException{
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		System.out.println(cid);
		String sql = "select max(book.name)as name,max(book.imgurl)as imgurl,max(book.discountprice)as discountprice ,SUM(bcount) as bcount" + 
				" from book,orders,order_details" + 
				" where book.bid = order_details.bid AND order_details.oid = orders.oid AND orders.state=1 AND cid = ?" + 
				" group by book.name" ;
		List<Order_details> list = qr.query(sql, new BeanListHandler<Order_details>(Order_details.class),cid);
		return list;
}
	
}
	