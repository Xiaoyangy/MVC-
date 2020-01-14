package com.pro.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pro.biz.LuxianBiz;
import com.pro.biz.LuxianBizImpl;
import com.pro.biz.UserBiz;
import com.pro.biz.UserBizImpl;
import com.pro.entity.Luxian;
import com.pro.entity.Users;

@WebServlet(urlPatterns = { "/findAllluxian" })
public class findAllluxian extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
		List<Luxian> list;
		String page = req.getParameter("page");
		System.out.println("页数为" + page);
		LuxianBiz luxianBiz = new LuxianBizImpl();
		int pages = luxianBiz.LuxianPages(5);
			if (page == null||Integer.valueOf(page)<=0||Integer.valueOf(page)>pages) {
				page = "1";
				list = luxianBiz.findAllluxian(Integer.valueOf(page), 5);
			} else {
				list = luxianBiz.findAllluxian(Integer.valueOf(page), 5);
			}
			req.setAttribute("list", list);
			req.setAttribute("page", pages);
			req.getRequestDispatcher("luxian.jsp").forward(req, resp);

		} catch (Exception e) {
 
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
  
