package com.imin.service;

import com.imin.domain.Admin;
import com.imin.exception.UserException;

public interface IAdminService {

	Admin login(String username,String password) throws UserException;
}
