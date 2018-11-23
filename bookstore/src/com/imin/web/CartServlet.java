package com.imin.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import org.apache.commons.lang.StringUtils;

import com.imin.domain.Book;
import com.imin.domain.Customer;
import com.imin.domain.Shopping_cart;
import com.imin.service.impl.CartServiceImpl;
import com.imin.service.impl.BookServiceImpl;

public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String method = request.getParameter("method");
		Integer count = 0;
		if ("cartBooksCount".equalsIgnoreCase(method)) {
			// 得到当前客户的cid
			Customer customer = (Customer) request.getSession().getAttribute("customer");
			try {
				if (customer != null) {
					count = new CartServiceImpl().selectCartBooksCount(customer.getCid());
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			response.getWriter().print(count);
		}else if("cartListBook".equalsIgnoreCase(method)) {
			Customer customer = (Customer) request.getSession().getAttribute("customer");
			try {
				if (customer != null) {
					/*System.out.println(customer.getCid());*/
					List<Shopping_cart> list = new CartServiceImpl().listCartBook(customer.getCid());
					request.setAttribute("list", list);
					/*for(Shopping_cart s:list) {
						System.out.println(s);
					}*/
					request.getRequestDispatcher("/cart.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else if("addCart".equalsIgnoreCase(method)) {
			Customer customer = (Customer) request.getSession().getAttribute("customer");
			String bid = request.getParameter("bid");
			String buyNum = request.getParameter("buyNum");
			//System.out.println(buyNum);
			Integer buynum = null;
			//System.out.println(bid);
			Double amount = null;
			Integer update = null;
			if (StringUtils.isNotBlank(bid)&&StringUtils.isNotBlank(buyNum)) {
				buynum = Integer.valueOf(buyNum);
				try {
					if (customer != null) {
						Book book = new BookServiceImpl().findBookById(bid);
						Shopping_cart cartBook = new CartServiceImpl().selectCartBook(bid);
						if(cartBook != null) {
							buynum  += cartBook.getBuynum();
							amount = book.getDiscountprice() * buynum;
							update = new CartServiceImpl().updateCartBook(buynum,amount, cartBook.getId());
						}else {
							amount = book.getDiscountprice() * buynum;
							//System.out.println(amount);
							update = new CartServiceImpl().addCartBook(buynum, amount, customer.getCid(), book.getDiscountprice(), book.getBid(), book.getName(), book.getImgurl());
						}
						if (update == 1) {
							response.sendRedirect(request.getContextPath() + "/book?method=selectIndexBooks");
						}
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}else if("cartUpdateBook".equalsIgnoreCase(method)) {
			Customer customer = (Customer) request.getSession().getAttribute("customer");
			String idstr = request.getParameter("id");
			String buynumstr = request.getParameter("buyNum");
			Integer id = null;
			Integer buynum = null;
			Double amount = null;
			
			if (StringUtils.isNotBlank(idstr)&&StringUtils.isNotBlank(buynumstr)) {
				id = Integer.valueOf(idstr);
				buynum = Integer.valueOf(buynumstr);
				try {
					Shopping_cart Shopping_cart = new CartServiceImpl().selectCartBook(id);
					amount = Shopping_cart.getUnitprice() * buynum;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			try {
				Integer update = new CartServiceImpl().updateCartBook(buynum,amount, id);
				//System.out.println(update);
				if(update != 0) {
					List<Shopping_cart> list = new CartServiceImpl().listCartBook(customer.getCid());
					request.setAttribute("list", list);
					request.getRequestDispatcher("/cart.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if("delCart".equalsIgnoreCase(method)) {
			Customer customer = (Customer) request.getSession().getAttribute("customer");
			//Integer update = null;
			if (customer != null) {
				String[] idstrs = request.getParameterValues("id");
				Integer id = null;
				if(idstrs !=null) {
					for(String idstr:idstrs) {
						if (StringUtils.isNotBlank(idstr)) {
							id = Integer.valueOf(idstr);
							try {
								new CartServiceImpl().deleteCartBook(id);
							} catch (SQLException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
					}
				}
				List<Shopping_cart> list;
				try {
					list = new CartServiceImpl().listCartBook(customer.getCid());
					request.setAttribute("list", list);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				request.getRequestDispatcher("/cart.jsp").forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
