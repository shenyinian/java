package com.imin.service.impl;

import java.sql.SQLException;

import com.imin.dao.impl.AdminDaoImpl;
import com.imin.domain.Admin;
import com.imin.exception.UserException;
import com.imin.service.IAdminService;

public class AdminServiceImpl implements IAdminService{

	public Admin login(String username, String password) throws UserException {
		
		try {
			Admin admin = new AdminDaoImpl().selectByNameAndPwd(username, password);
			if(admin == null){
				throw new UserException("用户名或密码错误");
			}
			return admin;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("网站出错,请联系程序员");
		}
	}

}
