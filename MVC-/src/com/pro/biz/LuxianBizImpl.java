package com.pro.biz;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.pro.dao.LuxianDao;
import com.pro.dao.LuxianDaoImpl;
import com.pro.entity.Luxian;
import com.pro.entity.Users;
import com.pro.utils.DBUtils;
public class LuxianBizImpl implements LuxianBiz{
	private LuxianDao luxiandao = new LuxianDaoImpl();
	@Override
	public int addLuxian(Luxian luxian) throws Exception {
		// TODO Auto-generated method stub
		return luxiandao.addLuxian(luxian);
	}
	@Override

	public List<Luxian> finByNameLuxian(String qishi) throws Exception {
		// TODO Auto-generated method stub
		return  luxiandao.finByNameLuxian(qishi);
	}


	@Override
	public int deleteByIdLuxian(int id) throws Exception {

		return luxiandao.deleteByIdLuxian(id);
	}

	@Override
	public List<Luxian> findAllluxian(int page, int number) throws Exception {
		return luxiandao.findAllluxian(page, number);
	}

	@Override
	public int LuxianPages(int number) throws Exception {
		Connection conn = DBUtils.getConnection();
		String sql = "select count(*) from luxian";
		PreparedStatement pt = conn.prepareStatement(sql);
		ResultSet rs = pt.executeQuery();
		if (rs.next()) {
			if (rs.getInt(1) % number == 0) {
				return rs.getInt(1) / number;
			} else {
				return rs.getInt(1) / number + 1;
			}
		}
		return 0;
	}

	

	@Override
	public boolean updateLuxian(Luxian luxian) throws Exception {
		return luxiandao.updateLuxian(luxian);
	}

	@Override
	public Luxian findByIdLuxian(int id) {
		String sql = "select * from luxian  where id=? and status=0";
		Luxian luxian=null;
		try {
			Connection con=DBUtils.getConnection();
			PreparedStatement pstm = con.prepareStatement(
					sql);
			pstm.setInt(1, id);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				luxian = new Luxian();
				luxian.setId(rs.getInt("id"));
				luxian.setQishi(rs.getString("qishi"));
				luxian.setZhongzhi(rs.getString("zhongzhi"));
				luxian.setStatus(rs.getInt("status"));
			}
			return luxian;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return luxian;
	}

}
