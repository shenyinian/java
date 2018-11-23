package com.imin.web;

import java.io.IOException;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang.StringUtils;

import com.imin.domain.Customer;
import com.imin.exception.UserException;
import com.imin.service.impl.CustomerServiceImpl;
import com.imin.utils.MD5Util;

@SuppressWarnings("serial")
public class CustomerServlet extends HttpServlet {

	@SuppressWarnings({ "unused", "rawtypes" })
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 解决post方式乱码
		request.setCharacterEncoding("UTF-8");
		String method = request.getParameter("method");
		response.setContentType("text/html;charset=utf-8");
		if ("regist".equalsIgnoreCase(method)) {
			// 获取前台传过来的参数
			Map params = request.getParameterMap();
			// 得到密码的明文
			//得到用户名
			String cusername = request.getParameter("cusername");
			//得到密码
			String password = request.getParameter("password");
			//得到确认密码
			String password2 = request.getParameter("password2");
			//得到邮箱
			String email = request.getParameter("email");
			//得到电话号码
			String phone = request.getParameter("phone");
			//得到地址
			String address = request.getParameter("address");
			//得到问题一
			String question_one = request.getParameter("question_one");
			//得到问题二
			String question_two = request.getParameter("question_two");
			//得到答案一
			String answer_one = request.getParameter("answer_one");
			//得到答案二
			String answer_two = request.getParameter("answer_two");
			//得到省
			String province = request.getParameter("province");
			//得到市
			String city = request.getParameter("city");
			//得到县级市
			String district = request.getParameter("district");
			//得到qq
			String qq = request.getParameter("qq");
			//得到注册协议
			String agree = request.getParameter("agree");
			//校验注册协议
			
			//判断必填项为空或者格式不对的情况
			
			Map<String, String> error = new HashMap<String, String>();
			//账户
			if (StringUtils.isBlank(cusername)) {
				error.put("cusername", "不能为空");
			}else if(!cusername.matches("[a-zA-Z]{6,8}")) {
				error.put("cusername", "账户必须是6-8位字母");
			}
			//密码
			if (StringUtils.isBlank(password)) {
				error.put("password", "不能为空");
			}else if(!password.matches("[a-zA-Z0-9]{6,12}")) {
				error.put("password", "密码必须是6-12位数字字母");
			}
			//确认密码
			if (StringUtils.isBlank(password2)) {
				error.put("password2", "不能为空");
			}else if(!password2.equals(password)) {
				error.put("password2", "密码不匹配，请重新输入");
			}
			//邮箱
			if (StringUtils.isBlank(email)) {
				error.put("email", "不能为空");
			}else if(!email.matches("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*")) {
				error.put("email", "邮箱格式错误，请重新输入");
			}
			//电话
			if (StringUtils.isBlank(phone)) {
				error.put("phone", "不能为空");
			}else if(!phone.matches("^1[34578]\\d{9}$")) {
				error.put("phone", "电话号码格式错误，请重新输入");
			}
			//地址
			if (StringUtils.isBlank(address)) {
				error.put("address", "不能为空");
			}
			//答案一
			if (StringUtils.isBlank(answer_one)) {
				error.put("answer_one", "不能为空");
			}
			//答案二
			if (StringUtils.isBlank(answer_two)) {
				error.put("answer_two", "不能为空");
			}
			//问题一
			if (StringUtils.equalsIgnoreCase(question_one, "请选择您要回答的问题一")) {
				error.put("question_one", "问题一不能为空");
			}
			//问题二
			if (StringUtils.equalsIgnoreCase(question_two, "请选择您要回答的问题二")) {
				error.put("question_two", "问题二不能为空");
			}
			//省份
			if (StringUtils.equalsIgnoreCase(province, "省份")) {
				error.put("province", "省份不能为空");
			}
			//地级市
			if (StringUtils.equalsIgnoreCase(city, "地级市")) {
				error.put("city", "地级市不能为空");
			}
			//市、县级市
			if (StringUtils.equalsIgnoreCase(district, "市、县级市")) {
				error.put("district", "市、县级市不能为空");
			}
			//qq
			if (StringUtils.isBlank(qq)) {
				error.put("qq", "不能为空");
			}else if(!qq.matches("[1-9]\\d{4,10}")) {
				error.put("qq", "QQ号码格式错误，请重新输入。。。。。。 ");
			}
			// 必填信息如果有空的或者格式不对的
			if (error.size() > 0) {
				request.setAttribute("error", error);
				request.getRequestDispatcher("/regist.jsp").forward(request, response);
				return;
			}
			//校验账户、邮箱、电话、qq是否已被注册
			try {
				Customer customer = new CustomerServiceImpl().regist(cusername, qq, phone, email);
				if (customer == null) {
					HttpSession session = request.getSession();
					session.setAttribute("customer", customer);
					
				}
			} catch (UserException e) {//如果不正确
				String msg = e.getMessage();
				request.setAttribute("errorMsg", msg);
				request.getRequestDispatcher("/regist.jsp").forward(request, response);
			}
			//将密码明文转为密文
			password = MD5Util.md5(password);
			Customer customer = new Customer();
			// 封装参数到customer对象
			try {
				BeanUtils.populate(customer, params);
				// 设置编码后的密码密文到customer对象
				customer.setPassword(password);
				// 保存用户数据到数据库
				new CustomerServiceImpl().regist(customer);
				// 注册完成后重定向到登陆页面
				response.sendRedirect(request.getContextPath() + "/login.jsp");
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if ("login".equalsIgnoreCase(method)) {
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
				request.getRequestDispatcher("/login.jsp").forward(request, response);
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
				request.getRequestDispatcher("/login.jsp").forward(request, response);
				return;
			}
			// 用户和密码验证正确
			try {
				Customer customer = new CustomerServiceImpl().login(username, password);
				if (customer != null) {
					HttpSession session = request.getSession();
					session.setAttribute("customer", customer);
					// 删除验证码
					session.removeAttribute("vCode");
					// 去主页显示数据,显得查询数据，然后去主页显示
					response.sendRedirect(request.getContextPath() + "/book?method=selectIndexBooks");
				}
			} catch (UserException e) {//如果不正确
				String msg = e.getMessage();
				request.setAttribute("errorMsg", msg);
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}

		}else if("logout".equalsIgnoreCase(method)){
			request.getSession().removeAttribute("customer");
			response.sendRedirect(request.getContextPath()+"/login.jsp");
		}else if ("password_1".equalsIgnoreCase(method)) {
			// 得到账户
			String cusername = request.getParameter("cusername");
			//System.out.println(cusername);
			// 得到验证码
			String vCode = request.getParameter("vCode");

			// 先校验验证码
			// if(vCode != null && !vCode.isEmpty()){
			String sessionCode = (String)(request.getSession().getAttribute("vCode"));
			if (StringUtils.isBlank(vCode) || !vCode.equalsIgnoreCase(sessionCode)) {
				// vCode是null/""/" "都返回true
				if (StringUtils.isBlank(vCode)) {
					request.setAttribute("vCode", "验证码不能为空");
				} else if (!vCode.equalsIgnoreCase(sessionCode)) {
					// 验证码不为空
					// String sessionVcodeString =
					// (String)(request.getSession().getAttribute("vCode"));
					request.setAttribute("vCode", "验证码不正确");
				}
				request.getRequestDispatcher("/password_1.jsp").forward(request, response);
				return;
			}
			// 验证码是OK的
			Map<String, String> error = new HashMap<String, String>();
			if (StringUtils.isBlank(cusername)) {
				error.put("cusername", "账户不能为空");
			}
			// 用户名如果有空的
			if (error.size() > 0) {
				request.setAttribute("error", error);
				request.getRequestDispatcher("/password_1.jsp").forward(request, response);
				return;
			}
			// 用户验证正确
			try {
				Customer customer1 = new CustomerServiceImpl().password_1(cusername);
				if (customer1 != null) {
					HttpSession session = request.getSession();
					//session.setAttribute("customer", customer1);
					// 删除验证码
					session.removeAttribute("vCode");
					//System.out.println(customer1.getQuestion_one());
					session.setAttribute("customer", customer1);
					// 去password_2显示数据,显得查询数据，然后去password_2显示
					//response.sendRedirect(request.getContextPath() + "/password_2.jsp");
					request.getRequestDispatcher("/password_2.jsp").forward(request, response);
				}
			} catch (UserException e) {//如果不正确
				String msg = e.getMessage();
				request.setAttribute("errorMsg", msg);
				request.getRequestDispatcher("/password_1.jsp").forward(request, response);
			}

		}else if ("password_2".equalsIgnoreCase(method)) {
			// 得到答案
			String answer_one = request.getParameter("answer_one");
			//System.out.println(answer_one);
			Map<String, String> error = new HashMap<String, String>();			
			Customer customer = (Customer) request.getSession().getAttribute("customer");
				if (customer != null) {
					if(!answer_one.equals(customer.getAnswer_one())) {
						error.put("answer_one", "输入有误，请重新输入");
						//System.out.println("王八蛋");
					}
					if (error.size() > 0) {
						request.setAttribute("error", error);
						request.getRequestDispatcher("/password_2.jsp").forward(request, response);
						return;
					}
					
					// 去password_2显示数据,显得查询数据，然后去password_2显示
					
					request.getRequestDispatcher("/password_3.jsp").forward(request, response);
				}
			

		}else if ("password_3".equalsIgnoreCase(method)) {
			// 得到答案
			String answer_two = request.getParameter("answer_two");
			//System.out.println(answer_one);
			Map<String, String> error = new HashMap<String, String>();			
			Customer customer = (Customer) request.getSession().getAttribute("customer");
				if (customer != null) {
					if(!answer_two.equals(customer.getAnswer_two())) {
						error.put("answer_two", "输入有误，请重新输入");
					}
					if (error.size() > 0) {
						request.setAttribute("error", error);
						request.getRequestDispatcher("/password_3.jsp").forward(request, response);
						return;
					}
					
					// 去password_2显示数据,显得查询数据，然后去password_2显示
					
					request.getRequestDispatcher("/password_4.jsp").forward(request, response);
				}
			}else if ("password_4".equalsIgnoreCase(method)) {
				Customer customer = (Customer) request.getSession().getAttribute("customer");
				// 得到新密码
				String password_bc2btxt = request.getParameter("password_bc2btxt");
				// 得到cid
				Integer cid = customer.getCid();
				
				request.setAttribute("password", password_bc2btxt);
				//System.out.println(password_bc2btxt);
				//对用户传过来的密码进行加密
				String md5 = MD5Util.md5(password_bc2btxt);
				Map<String, String> error = new HashMap<String, String>();
				if (StringUtils.isBlank(password_bc2btxt)) {
					error.put("password_bc2btxt", "不能为空");
				}else if(!password_bc2btxt.matches("[a-zA-Z0-9]{6,12}")) {
					error.put("password_bc2btxt", "密码必须是6-12位数字字母");
				}
				// 用户名如果有空的
				if (error.size() > 0) {
					request.setAttribute("error", error);
					request.getRequestDispatcher("/password_4.jsp").forward(request, response);
					return;
				}
				// 用户验证正确
				try {
					
					if (customer != null) {
						if(md5.equals(customer.getPassword())) {
							error.put("password_bc2btxt", "请设置一个新的密码");
						}if (error.size() > 0) {
							request.setAttribute("error", error);
							request.getRequestDispatcher("/password_4.jsp").forward(request, response);
							return;
						}
						Integer password_bc2btxt1 = new CustomerServiceImpl().password_4(md5, cid);
						if(password_bc2btxt1!=1) {
							error.put("password_bc2btxt", "修改密码失败");
						}
						if (error.size() > 0) {
							request.setAttribute("error", error);
							request.getRequestDispatcher("/password_4.jsp").forward(request, response);
							return;
						}
						request.getRequestDispatcher("/password_5.jsp").forward(request, response);
					}
				} catch (Exception e) {//如果不正确
					String msg = e.getMessage();
					request.setAttribute("errorMsg", msg);
					request.getRequestDispatcher("/password_4.jsp").forward(request, response);
				}

			}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}