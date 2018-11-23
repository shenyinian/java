package com.imin.dao;

import java.sql.SQLException;



import com.imin.domain.Customer;

public interface ICustomerDao {
	
	void insert(Customer customer) throws Exception;

	Customer selectByNameAndPwd(String username,String password) throws SQLException;
	Customer selectByNameAndQqAndPhoneAndEmail(String cname, String qq,String phone,String email) throws SQLException;
	Customer selectByName(String cusername) throws SQLException;
	Integer updateByCidAndPassword(String password_bc2btxt,Integer cid) throws SQLException;
}
