package com.imin.dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.imin.dao.IAdminDao;
import com.imin.domain.Admin;
import com.imin.utils.DButil;

public class AdminDaoImpl implements IAdminDao{

	//管理员登陆
		public Admin selectByNameAndPwd(String username, String password) throws SQLException {
			String sql = "SELECT * FROM admin WHERE ausername = ? AND apassword = ?";
			QueryRunner qr = new QueryRunner(DButil.getDataSource());
			Admin admin = qr.query( sql, new BeanHandler<Admin>(Admin.class),username,password);
			return admin;
		}

		/*//添加管理员到数据库
		public void insert(Admin c) throws Exception {
			String sql = "insert into admin(ausername,apassword " +
					"values(?,?)";
			Object[] params = {c.getAusername(),c.getApassword()};
			QueryRunner qr = new QueryRunner(DButil.getDataSource());
			qr.update(sql,params);
		}*/
}
