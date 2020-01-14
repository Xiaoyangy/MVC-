package com.pro.dao;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import com.pro.entity.Luxian;

import com.pro.utils.DBUtils;
import com.pro.entity.Luxian;
public class LuxianDaoImpl implements LuxianDao{

	@Override
	public int addLuxian(Luxian luxian) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(luxian.getQishi());
		Connection conn = DBUtils.getConnection();
		String sql = "insert into luxian(qishi,zhongzhi,status,userid) value(?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, luxian.getQishi());
        ps.setString(2, luxian.getZhongzhi());
        ps.setInt(3, luxian.getStatus());
        ps.setInt(4, 4);
		return ps.executeUpdate();
	}

	@Override 
	public List<Luxian> finByNameLuxian(String qishi) throws Exception {
		// TODO Auto-generated method stub
		List<Luxian> list = new ArrayList<Luxian>();
		Connection con = DBUtils.getConnection();
		String selsql = "select * from luxian where qishi like '%" + qishi
				+ "%' and status=0";
		Statement stm = con.createStatement();
		ResultSet rs = stm.executeQuery(selsql);
		while (rs.next()) {
			Luxian luxian=new Luxian();
			luxian.setId(rs.getInt("id"));
			luxian.setStatus(rs.getInt("status"));
			luxian.setQishi(rs.getString("qishi"));
			luxian.setZhongzhi(rs.getString("zhongzhi"));
			list.add(luxian);
		}
		return list;
	}

	@Override
	public int deleteByIdLuxian(int id) throws Exception {
		Connection conn = DBUtils.getConnection();
		String sql = " update luxian set status=1 where id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setLong(1, id);
		return ps.executeUpdate();
	}

	@Override
	public List<Luxian> findAllluxian(int page, int number) throws Exception {
		Connection conn = DBUtils.getConnection();
		String sql = "select *from luxian where status=0 limit ?,?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, (page - 1) * number);
		ps.setInt(2, number);
		List<Luxian> list = new ArrayList<Luxian>();
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Luxian luxian2=new Luxian();
			luxian2.setId(rs.getInt("id"));
			luxian2.setQishi(rs.getString("qishi"));
			luxian2.setZhongzhi(rs.getString("zhongzhi"));
			luxian2.setStatus(rs.getInt("status"));

			list.add(luxian2);
		}
		return list;
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
		Connection conn=DBUtils.getConnection();
		
		String sql = "update luxian set qishi=?,zhongzhi=?,status=? where id=?";
		PreparedStatement pstat = conn.prepareStatement(sql);
		pstat.setString(1,luxian.getQishi());
		pstat.setString(2,luxian.getZhongzhi());
		pstat.setInt(3,luxian.getStatus());
		pstat.setInt(4,luxian.getId());
		if(pstat.executeUpdate() > 0){
		System.out.println("修改成功");
		return pstat.executeUpdate() > 0;
		}else{
			System.out.println("修改失败");
			return false;
		}
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

	@Override
	public List<Luxian> findShengyu(int page, int number) throws Exception {
		Connection conn = DBUtils.getConnection();
		String sql = "select *from luxian where status=0 limit ?,?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, (page - 1) * number);
		ps.setInt(2, number);
		List<Luxian> list = new ArrayList<Luxian>();
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Luxian luxian2=new Luxian();
			luxian2.setId(rs.getInt("id"));
			luxian2.setQishi(rs.getString("qishi"));
			luxian2.setZhongzhi(rs.getString("zhongzhi"));
			luxian2.setStatus(rs.getInt("status"));

			list.add(luxian2);
		}
		return list;
	}

}
