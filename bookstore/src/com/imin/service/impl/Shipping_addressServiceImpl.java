package com.imin.service.impl;


import java.sql.SQLException;
import java.util.List;

import com.imin.dao.impl.CartDaoImpl;
import com.imin.dao.impl.CustomerDaoImpl;
import com.imin.dao.impl.Shipping_addressDaolmpl;
import com.imin.domain.Customer;
import com.imin.domain.Shipping_address;

public class Shipping_addressServiceImpl {
	//添加

	public void Shipping_address(Shipping_address shipping_address) throws Exception {
		
			new Shipping_addressDaolmpl().insert(shipping_address);
		
	}
	//显示
	public List<Shipping_address> findadd(Integer cid) {
	
	try {
		List<Shipping_address> shipping_address1 = new Shipping_addressDaolmpl().find(cid);
		return shipping_address1;
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
	
	
	}
	//删除
	public Integer deleteShipping_address(Integer id) throws Exception{
		return new Shipping_addressDaolmpl().delete(id);
		
	}
	
	public Shipping_address selectAdd(Integer cid,String name, String county)throws Exception{
		return new Shipping_addressDaolmpl().selectAdd(cid, name, county);
		
	}
}
