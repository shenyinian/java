package com.imin.service;

import java.sql.SQLException;

import com.imin.domain.Customer;
import com.imin.exception.UserException;

public interface ICustomerService {

	//用户注册
	void regist(Customer customer) throws SQLException;
	//用户登录
	Customer login(String username,String password) throws UserException;
	
	Customer password_1(String cusername) throws UserException;
	
	Integer password_4(String password_bc2btxt,Integer cid) throws UserException;

	
}
