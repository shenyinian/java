package com.imin.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;

import com.imin.domain.Customer;

public class CheckFilter implements Filter {

	public CheckFilter() {
		System.out.println("执行CheckFilter构造器");
	}

	public void destroy() {
		System.out.println("执行的destroy方法");
	}

	/**
	 * 过滤器: 1.购物车:/cart 2.支付:/pay 3.会员中心:/vip 4.后台:/manage/*
	 */
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		// 拿到servlet路径
		String servletPath = req.getServletPath();
		System.out.println("servletPath:" + servletPath);
		// 前台页面的检查,/cart,/pay,/vip 需要用户登录才能访问
		if (StringUtils.isNotBlank(servletPath)
				&& (servletPath.contains("/cart")
						|| servletPath.contains("/pay")
						|| servletPath.contains("/vip"))) {
			Object customer = req.getSession().getAttribute("customer");
			if (customer == null) {
				((HttpServletResponse) response).sendRedirect(req
						.getContextPath() + "/advice_customer.jsp");
				return;
			} else {
				// 通过保安检测,请求继续
				chain.doFilter(request, response);
			}
			// 后台登录的检查,管理员登录才能访问
		} else if (StringUtils.isNotBlank(servletPath)
				&& (servletPath.contains("/manage/"))) {
			Object manager = req.getSession().getAttribute("manager");
			if (manager == null) {
				((HttpServletResponse) response).sendRedirect(req
						.getContextPath() + "/advice_manage.jsp");
				return;
			} else {
				// 通过保安检测,请求继续
				chain.doFilter(request, response);
			}
		} else {//如果不需要检查的请求继续
			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("执行init方法");
	}

}
