package com.pro.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.pro.biz.GoodsBiz;
import com.pro.biz.GoodsBizImpl;
import com.pro.biz.LuxianBiz;
import com.pro.biz.LuxianBizImpl;
import com.pro.biz.UserBiz;
import com.pro.biz.UserBizImpl;
import com.pro.entity.Goods;
import com.pro.entity.Luxian;
import com.pro.entity.Users;
import com.pro.utils.DBUtils;

/**
 * Servlet implementation class AddLuxian
 */
@WebServlet("/AddLuxian")
public class AddLuxian extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	/**


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String qishi=req.getParameter("qishi");
		String zhongzhi=req.getParameter("zhongzhi");
		String zhuangtai=req.getParameter("status");
		
		Luxian luxian = new Luxian();  
		luxian.setQishi(qishi);
		luxian.setZhongzhi(zhongzhi);
		luxian.setStatus(0);
		
		UserBiz userbiz = new UserBizImpl();
		
 
      
	    LuxianBiz luxianbiz=new LuxianBizImpl();
		int r;
		try {
			r = luxianbiz.addLuxian(luxian);
			if (r > 0) {
				System.out.println("添加成功");
				resp.sendRedirect("findAllluxian");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeConnection();
		}
		
	} 

}
