package com.imin.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;

import com.imin.domain.Customer;
import com.imin.domain.OrderID;
import com.imin.domain.Shipping_address;
import com.imin.domain.Shopping_cart;
import com.imin.service.impl.CartServiceImpl;
import com.imin.service.impl.OrderServiceImpl;
import com.imin.service.impl.Shipping_addressServiceImpl;

public class PayServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String method = request.getParameter("method");
		@SuppressWarnings("unused")
		Integer count = 0;
		if("toBuyAddress".equalsIgnoreCase(method)) {
			Customer customer = (Customer) request.getSession().getAttribute("customer");
			//Integer update = null;
			double totalPrice = 0;
			if (customer != null) {
				String[] idstrs = request.getParameterValues("id");
				Integer id = null;
				List<Shopping_cart> list = new ArrayList<Shopping_cart>();
				if(idstrs !=null) {
					
						for(String idstr:idstrs) {
							if (StringUtils.isNotBlank(idstr)) {
								id = Integer.valueOf(idstr);
								try {
									Shopping_cart book = new CartServiceImpl().selectCartBook(id);
									totalPrice += book.getAmount();
									list.add(book);
								} catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							}
						
					}
				}
				request.setAttribute("list", list);
				request.setAttribute("totalPrice", totalPrice);
				HttpSession session = request.getSession();
				session.setAttribute("cartlist", list);
				session.setAttribute("totalPrice", totalPrice);
				request.getRequestDispatcher("/buy_address.jsp").forward(request, response);
			}
		}else if("addAddress".equalsIgnoreCase(method)){
			Customer customer = (Customer) request.getSession().getAttribute("customer");
			//得到详细地址
			String addr_detail= request.getParameter("addr_detail");
			//得到详细地址
			String postCode= request.getParameter("postCode");

			//得到收货人姓名
			String name= request.getParameter("name");
			//得到手机
			String mobile= request.getParameter("mobile");
			//得到省
			String province = request.getParameter("province");
			//得到市
			String city = request.getParameter("city");
			//得到县级市
			String district = request.getParameter("country");
			//得到默认地址
			String defautAddrstr = request.getParameter("defautAddr");
			Integer defautAddr = 0;
			if(StringUtils.isNotBlank(defautAddrstr)) {
				defautAddr = Integer.valueOf(defautAddrstr);
			}
			Map<String, String> error = new HashMap<String, String>();
			if (StringUtils.isBlank(addr_detail)) {
				error.put("addr_detail", "详细地址不能为空");
			}
			if (StringUtils.isBlank(postCode)) {
				error.put("postCode", "邮编不能为空");
			}
			if (StringUtils.isBlank(mobile)) {
				error.put("mobile", "手机号码不能为空");
			}
			if (StringUtils.isBlank(name)) {
				error.put("name", "收货人姓名不能为空");
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
			//必填格式如果有空或者格式不对的
			if (error.size() > 0) {
				request.setAttribute("error", error);
				request.getRequestDispatcher("/buy_address.jsp").forward(request, response);
				return;
			}
			
		// 封装参数到shipping_address对象
			Shipping_address shipping_address=new Shipping_address();
			shipping_address.setCid(customer.getCid());
			shipping_address.setAddr_detail(addr_detail);
			shipping_address.setPostCode(postCode);
			shipping_address.setName(name);
			shipping_address.setMobile(mobile);
			shipping_address.setProvince(province);
			shipping_address.setCity(city);
			shipping_address.setCounty(district);
			shipping_address.setDefaultAddr(defautAddr);
			// 填写完成后重定向到本页面
			try {
				new Shipping_addressServiceImpl().Shipping_address(shipping_address);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			HttpSession session = request.getSession();
			session.setAttribute("address", shipping_address);
			try {
				/*List<Shipping_address> addresslist = new Shipping_addressServiceImpl().findadd(customer.getCid());
				request.setAttribute("addresslist", addresslist);*/
				List<Shopping_cart> cartlist = (List<Shopping_cart>) request.getSession().getAttribute("cartlist");
				request.setAttribute("list", cartlist);
				double totalPrice = (double) request.getSession().getAttribute("totalPrice");
				request.setAttribute("totalPrice", totalPrice);
				request.setAttribute("address", shipping_address);
				request.getRequestDispatcher("/buy_address.jsp").forward(request, response);
				//response.sendRedirect(request.getContextPath()+"/address.jsp");
			} catch (Exception e) {
			}
			
		}else if("pay1".equalsIgnoreCase(method)) {
			Customer customer = (Customer) request.getSession().getAttribute("customer");
			List<Shopping_cart> cartlist = (List<Shopping_cart>) request.getSession().getAttribute("cartlist");
			Shipping_address address = (Shipping_address) request.getSession().getAttribute("address");
			try {
				Shipping_address selectAdd = new Shipping_addressServiceImpl().selectAdd(customer.getCid(), address.getName(), address.getCounty());
				System.out.println(selectAdd.getId());
				request.setAttribute("cartlist", cartlist);
				request.setAttribute("address1", selectAdd);
				HttpSession session = request.getSession();
				Integer aid = selectAdd.getId();
				session.setAttribute("aid", aid);
				request.getRequestDispatcher("/buy_pay.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else if ("addOrders".equalsIgnoreCase(method)) {
			Customer customer = (Customer) request.getSession().getAttribute("customer");
			List<Shopping_cart> cartlist = (List<Shopping_cart>) request.getSession().getAttribute("cartlist");
			Shipping_address address = (Shipping_address) request.getSession().getAttribute("address");
			Double totalprice = (Double) request.getSession().getAttribute("totalPrice");
			Long cid = Long.valueOf(customer.getCid());
			String oid = new OrderID().getOrderCode(cid);
			Shipping_address selectAdd;
			try {
				selectAdd = new Shipping_addressServiceImpl().selectAdd(customer.getCid(), address.getName(), address.getCounty());
				new OrderServiceImpl().addOrder(oid, customer.getCid(), selectAdd.getId(), cartlist.size(), totalprice);
				for(Shopping_cart s:cartlist) {
					String id = new OrderID().getOrderCode(cid);
					new OrderServiceImpl().addOrder_details(id, oid, s.getBid(), s.getBuynum());
					new CartServiceImpl().deleteCartBook(s.getId());
				}
				request.getRequestDispatcher("/succeed.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
