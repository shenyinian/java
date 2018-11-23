package com.imin.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;

import com.imin.domain.Admin;
import com.imin.exception.UserException;
import com.imin.service.impl.AdminServiceImpl;

@SuppressWarnings("serial") 
public class AdminServlet extends HttpServlet {

	@SuppressWarnings({ "unused", "rawtypes" })
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 解决post方式乱码
		request.setCharacterEncoding("UTF-8");
		String method = request.getParameter("method");
		response.setContentType("text/html;charset=utf-8");
		if ("login".equalsIgnoreCase(method)) {
			// 得到用户名
			String username = request.getParameter("username");
			// 得到密码
			String password = request.getParameter("password");
			// 得到验证码
			String vCode = request.getParameter("vCode");

			// 先校验验证码
			// if(vCode != null && !vCode.isEmpty()){
			String sessionCode = (String)(request.getSession().getAttribute("vCode"));
			if (StringUtils.isBlank(vCode) || !vCode.equalsIgnoreCase(sessionCode)) {
				// vCode是null/""/" "都返回true
				if (StringUtils.isBlank(vCode)) {
					request.setAttribute("vCodeMsg", "验证码不能为空");
				} else if (!"abcd".equalsIgnoreCase(vCode)) {
					// 验证码不为空
					// String sessionVcodeString =
					// (String)(request.getSession().getAttribute("vCode"));
					request.setAttribute("vCodeMsg", "验证码不正确");
				}
				request.getRequestDispatcher("/login_admin.jsp").forward(request, response);
				return;
			}
			// 验证码是OK的
			Map<String, String> error = new HashMap<String, String>();
			if (StringUtils.isBlank(username)) {
				error.put("username", "用户名不能为空");
			}

			if (StringUtils.isBlank(password)) {
				error.put("password", "密码不能为空");
			}
			// 用户名和密码如果有空的
			if (error.size() > 0) {
				request.setAttribute("error", error);
				request.getRequestDispatcher("/login_admin.jsp").forward(request, response);
				return;
			}
			// 用户和密码验证正确
			try {
				Admin admin = new AdminServiceImpl().login(username, password);
				if (admin != null) {
					HttpSession session = request.getSession();
					session.setAttribute("admin", admin);
					// 删除验证码
					session.removeAttribute("vCode");
					// 去管理页显示数据,显得查询数据，然后去管理页显示/manage?method=selectCustomerInfo
					response.sendRedirect(request.getContextPath() + "/book?method=selectIndexBooks");
				}
			} catch (UserException e) {//如果不正确
				String msg = e.getMessage();
				request.setAttribute("errorMsg", msg);
				request.getRequestDispatcher("/login_admin.jsp").forward(request, response);
			}

		}else if("logout".equalsIgnoreCase(method)){
			request.getSession().removeAttribute("admin");
			response.sendRedirect(request.getContextPath()+"/login_admin.jsp");
		}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
