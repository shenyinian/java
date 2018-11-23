package com.imin.dao;

import java.sql.SQLException;

import com.imin.domain.Admin;

public interface IAdminDao {

	Admin selectByNameAndPwd(String username, String password) throws SQLException;
}
