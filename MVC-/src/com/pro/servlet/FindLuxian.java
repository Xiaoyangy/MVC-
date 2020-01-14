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
import com.pro.entity.Luxian;
import com.pro.entity.Users;
import com.pro.utils.DBUtils;

@WebServlet("/FindLuxian")
public class FindLuxian extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String qishi = req.getParameter("qishi");
		System.out.println(qishi);
		LuxianBiz luxianBiz = new LuxianBizImpl();
		try {
			List<Luxian> list = luxianBiz.finByNameLuxian(qishi);
			if(list.size()!=0){
			req.setAttribute("list", list);
			req.getRequestDispatcher("deleteLuxian.jsp").forward(req, resp);
			}else{
				 req.setAttribute("findError", "没有该路线");
				 req.getRequestDispatcher("deleteLuxian.jsp").forward(req, resp);

			}
	} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeConnection();
		}
	}
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req,resp);
	}
	
}
  