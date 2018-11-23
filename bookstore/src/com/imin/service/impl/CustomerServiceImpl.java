package com.imin.service.impl;

import java.sql.SQLException;



import com.imin.dao.impl.CustomerDaoImpl;
import com.imin.domain.Customer;
import com.imin.exception.UserException;
import com.imin.service.ICustomerService;
import com.imin.utils.MD5Util;

public class CustomerServiceImpl implements ICustomerService {

	public void regist(Customer customer) {
		try {
			new CustomerDaoImpl().insert(customer);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Customer login(String username, String password) throws UserException {
		//1.对用户传过来的密码进行加密
		String md5 = MD5Util.md5(password);
		try {
			Customer customer = new CustomerDaoImpl().selectByNameAndPwd(username,md5);
			if(customer == null){
				throw new UserException("用户名或密码错误");
			}
			return customer;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("网站维护,请联系管理员");
		}
	}
	
	public Customer regist(String cusername, String qq,String phone,String email) throws UserException {
		
		try {
			Customer customer = new CustomerDaoImpl().selectByNameAndQqAndPhoneAndEmail(cusername,qq,phone,email);
			if(customer != null){
				throw new UserException("用户已存在，请重新输入");
			}
			return customer;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("网站维护,请联系管理员");
		}
	}
	public Integer updateCustomer(String nickname, String cname,String email,String phone,String qq, String province,String city,String district,String school, String classname,Integer cid) throws Exception{
		
		try {
		Integer update=new CustomerDaoImpl().updateCustomer(nickname, cname,email,phone,qq,province, city,district,school,classname,cid);
		if(update!=1) {
			throw new UserException("修改失败");
		}else {
			return update;
		}
		
		
		} catch (SQLException e) {
			e.printStackTrace();
			throw new Exception("网站维护，请联系管理员");
		}
	
	} 
	
	public Customer selectByName(String cusername) throws SQLException{
		return new CustomerDaoImpl().selectByName(cusername);
		
	}
	
	public Customer password_1(String cusername) throws UserException {
		
		try {
			Customer customer1 = new CustomerDaoImpl().selectByName(cusername);
			if(customer1 == null){
				throw new UserException("用户不存在");
			}else {
			return customer1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("网站维护,请联系管理员");
		}
	}
	public Integer password_4(String password_bc2btxt,Integer cid) throws UserException {
		
		try {
			Integer password_bc2btxt1 = new CustomerDaoImpl().updateByCidAndPassword(password_bc2btxt, cid);
			if(password_bc2btxt1 != 1){
				throw new UserException("修改密码失败");
			}else {
			return password_bc2btxt1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("网站维护,请联系管理员");
		}
	}

}
