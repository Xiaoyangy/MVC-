package com.pro.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pro.biz.LuxianBiz;
import com.pro.biz.LuxianBizImpl;
import com.pro.entity.Luxian;
@WebServlet("/modifyLuxian")
public class modifyLuxian  extends  HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String luxianid=req.getParameter("id");
		// 调用业务层获取该luxianid的luxian对象，并显示给客户端进行修改
		System.out.println("modify获取到的luxianid是"+luxianid);
		LuxianBiz luxianbiz=new LuxianBizImpl();
		Luxian luxians = luxianbiz.findByIdLuxian(Integer.valueOf(luxianid));
		req.setAttribute("Luxian", luxians);
		req.getRequestDispatcher("changeluxian.jsp").forward(req, resp);
		System.out.println("页面跳转了");
		
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");

		try {
			String id=req.getParameter("id");
			Integer lxId=Integer.parseInt(id);
			String qishi=req.getParameter("qishi");
			String zhongzhi=req.getParameter("zhongzhi");
			String sta=req.getParameter("status");
			Integer lxstatus=Integer.parseInt(sta);
			Luxian luxians=new Luxian();
			luxians.setQishi(qishi);
			luxians.setZhongzhi(zhongzhi);
			luxians.setId(lxId);
			luxians.setStatus(lxstatus);
			LuxianBiz luxianbiz = new LuxianBizImpl();
			luxianbiz.updateLuxian(luxians);
			resp.sendRedirect("findAllluxian");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  }	
	
}
