package com.imin.web;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang.StringUtils;

import com.imin.domain.Book;
import com.imin.domain.Category;
import com.imin.domain.Page;
import com.imin.service.impl.BookServiceImpl;
import com.imin.service.impl.CategoryServiceImpl;
import com.imin.vo.DetailPageVo;
import com.imin.vo.IndexVo;

import net.sf.json.JSONArray;

public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String requestMethod = request.getMethod();
		if (requestMethod.equalsIgnoreCase("POST")) {
			request.setCharacterEncoding("UTF-8");
		}
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");
		// 显示主页数据
		if ("selectIndexBooks".equalsIgnoreCase(method)) {
			try {
				IndexVo vo = new BookServiceImpl().selectIndexBooks();
				request.setAttribute("vo", vo);
				request.getRequestDispatcher("/real_index.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if ("selectPromptByName".equalsIgnoreCase(method)) {
			String bookName = request.getParameter("bookName");
			try {
				List<String> list = new BookServiceImpl().selectPromptByName(bookName);
				// 将list集合转换成json字符串
				JSONArray names = JSONArray.fromObject(list);
				response.getWriter().println(names);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if ("listBookByName".equalsIgnoreCase(method)) {
			/*String name = request.getParameter("name");*/
			/*try {
				List<Book> list = new BookServiceImpl().listBookByName(bookName);
			} catch (Exception e) {
				e.printStackTrace();
			}*/
			
			String contextPath = request.getContextPath();
			// 得到servlet路径
			String servletPath = request.getServletPath();
			// 得到参数,注意没有保护问号
			String queryStr = request.getQueryString();
			// 删掉&currentPage=xxx的参数,这个参数由请求决定
			int index = queryStr.lastIndexOf("&currentPage=");
			// 如果查询请求中有&currentPage=xxx参数
			if (index != -1) {
				queryStr = queryStr.substring(0, index);
			}
			// 得到url放到page对象中
			String url = contextPath + servletPath + "?" + queryStr;
			
			// 得到当前页
			String currentPageStr = request.getParameter("currentPage");
			
			Integer currentPage = currentPageStr == null ? 1 : Integer.valueOf(currentPageStr);
			Book book = new Book();
			try {
				BeanUtils.populate(book, request.getParameterMap());
				// 设置的name经过url编码，需要解码
				String name = request.getParameter("name");
				
				if (name != null) {
					book.setName(name);
				}
				/*book.setGrade(grade);*/
				Page<Book> page = new BookServiceImpl().selectBooksByName(book, currentPage);
				page.setUrl(url);
				String category1 = "";
				String category3 = "";
				
					// 将url存放到page对象中
				request.setAttribute("page", page);
				request.setAttribute("category1", category1);
				request.setAttribute("category3", category3);
				request.getRequestDispatcher("/booklist.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if ("selectBooksByCategory".equalsIgnoreCase(method)) {
			// 封装url
			// http://localhost:8080/day08_huihui/book?method=selectBooksByCategory&currentPage=2
			// 得到项目路径
			String contextPath = request.getContextPath();
			// 得到servlet路径
			String servletPath = request.getServletPath();
			// 得到参数,注意没有保护问号
			String queryStr = request.getQueryString();
			// 删掉&currentPage=xxx的参数,这个参数由请求决定
			int index = queryStr.lastIndexOf("&currentPage=");
			// 如果查询请求中有&currentPage=xxx参数
			if (index != -1) {
				queryStr = queryStr.substring(0, index);
			}
			// 得到url放到page对象中
			String url = contextPath + servletPath + "?" + queryStr;
			// 得到书籍分类
			String gradestr = request.getParameter("grade");
			// 得到书籍分类的层次
			String level = request.getParameter("level");
			// 得到当前页
			String currentPageStr = request.getParameter("currentPage");
			Integer grade = null;
			if (StringUtils.isNotBlank(gradestr)) {
				grade = Integer.valueOf(gradestr);
			}
			Integer currentPage = currentPageStr == null ? 1 : Integer.valueOf(currentPageStr);
			Book book = new Book();
			try {
				BeanUtils.populate(book, request.getParameterMap());
				// 设置的name经过url编码，需要解码
				String name = request.getParameter("name");
				// 如果是get请求,需要解决乱码问题
				if (name != null && request.getMethod().equalsIgnoreCase("GET")) {
					byte[] bytes = name.getBytes("ISO8859-1");
					name = new String(bytes, "UTF-8");
					book.setName(name);
				}
				book.setGrade(grade);
				Page<Book> page = new BookServiceImpl().selectBooksByCategory(book, level, currentPage);
				page.setUrl(url);
				String category1 = "";
				Category category2;
				String category3 = "";
				category2 = new CategoryServiceImpl().getCategoryById(grade);
				category3 = category2.getCategory_name();
				if(level.equals("10")) {
					category1 = new CategoryServiceImpl().getCategoryById(category2.getCategory_pid()).getCategory_name();
				}
					// 将url存放到page对象中
				request.setAttribute("page", page);
				request.setAttribute("category1", category1);
				request.setAttribute("category3", category3);
				request.getRequestDispatcher("/booklist.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if ("selectBookById".equals(method)) {
			try {
				Map<String, String[]> map = request.getParameterMap();
				Book book = new Book();
				BeanUtils.populate(book, map);
				// 书籍详情页面需要的数据
				DetailPageVo detailPageVo = new BookServiceImpl().findBookDetailById(book.getBid());
				request.setAttribute("detialVo", detailPageVo);
				request.getRequestDispatcher("/book.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
