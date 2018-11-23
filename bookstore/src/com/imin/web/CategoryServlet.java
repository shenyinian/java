package com.imin.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.imin.domain.Category;
import com.imin.service.impl.CategoryServiceImpl;

import net.sf.json.JSONArray;

public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String method = request.getParameter("method");
		if("selectCategoryDeep".equalsIgnoreCase(method)){
			//设置响应头为JSON
			response.setContentType("application/json;charset=UTF-8");
			List<Category> categories;
			try {
				categories = new CategoryServiceImpl().selectCategoryDeep();
				JSONArray jsonArray = JSONArray.fromObject(categories);
				response.getWriter().print(jsonArray);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
