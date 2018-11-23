package com.imin.dao.impl;

import java.sql.Connection;


import java.sql.SQLException;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.imin.dao.ICustomerDao;
import com.imin.domain.Customer;
import com.imin.utils.DButil;
public class CustomerDaoImpl implements ICustomerDao {
//添加用户到数据库
	public void insert(Customer c) throws Exception {
		String sql = "insert into customer(nickname,password,phone,qq,cusername,address,city,district," +
				"classname,grade,postcode,province,ctype,school," +
				"credit,picurl,email,birthday,gender,question_one,question_two,answer_one,answer_two) " +
				"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = {c.getNickname(),c.getPassword(),c.getPhone(),c.getQq(),c.getCusername(),c.getAddress(),c.getCity(),c.getDistrict(),
						   c.getClassName(),c.getGrade(),c.getPostcode(),c.getProvince(),c.getCtype(),c.getSchool(),
						   c.getCredit(),c.getPicurl(),c.getEmail(),c.getBirthday(),c.getGender(),c.getQuestion_one(),c.getQuestion_two(),c.getAnswer_one(),c.getAnswer_two()};
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		qr.update(sql,params);
	}
//注册
	public Customer selectByNameAndQqAndPhoneAndEmail(String cusername, String qq,String phone,String email) throws SQLException {
		String sql = "SELECT * FROM customer WHERE cusername = ? AND qq = ? AND phone = ? AND email = ?";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		Customer customer = qr.query( sql, new BeanHandler<Customer>(Customer.class),cusername,qq,phone,email);
		return customer;
	}
	
	//用户信息更新
		public Integer updateCustomer(String nickname, String cname,String email,String phone,String qq, String province,String city,String district,String school, String classname,Integer cid) throws SQLException {
			String sql = "UPDATE customer SET nickname =?,cname =?,email =?,phone =?,qq =?,province =?,city =?," + 
					"district =?,school =?,classname =? WHERE cid =?";
			QueryRunner qr = new QueryRunner(DButil.getDataSource());
			int update = qr.update(sql, nickname,cname,email,phone,qq,province,city,district,school,classname,cid);
			return update;
		}
	
//用户登录
	@Override
	public Customer selectByNameAndPwd(String cusername, String password) throws SQLException {
		String sql = "SELECT * FROM customer WHERE cusername = ? AND password = ?";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		Customer customer = qr.query( sql, new BeanHandler<Customer>(Customer.class),cusername,password);
		return customer;
	}
	
	public Customer selectByName(String cusername) throws SQLException {
		String sql = "SELECT * FROM customer WHERE cusername = ?";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		Customer customer = qr.query( sql, new BeanHandler<Customer>(Customer.class),cusername);
		return customer;
	}
	
			//new password
	public Integer updateByCidAndPassword(String password_bc2btxt,Integer cid) throws SQLException {
		String sql = "UPDATE customer SET `password`=? WHERE cid=?;";
		QueryRunner qr = new QueryRunner(DButil.getDataSource());
		Integer update = qr.update(sql, password_bc2btxt,cid);
		return update;
	}
}
