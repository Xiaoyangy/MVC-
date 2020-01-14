package com.pro.dao;

import java.util.List;

import com.pro.entity.Goodsf;
import com.pro.entity.Users;

public interface GoodsfDao {
	//商品添加
	public int addGood(Goodsf good) throws Exception;
    //查询自己的 商品
	public List<Goodsf> findGoodsByUseidAndGoodsname(Goodsf goods) throws Exception;
	//查询自己的第一页商品
	public List<Goodsf> findAllGoods(int userid,int page,int number)throws Exception;
	//查询自己的页数
	public int GoodsPages(int number) throws Exception;
	//通过id查询商品信息
	public Goodsf  findByIdGoods(int id)throws Exception;
	//修改商品信息
	public int modifyGood(Goodsf good) throws Exception;
    //删除商品信息
	public int deleteGood(int id) throws Exception;
	//前台显示所有商品
	public List<Goodsf> findAllGoods(int page, int number) throws Exception;
	//关闭商品,设置状态 码
	public int  deleteByIdGoods(int id)throws Exception; 
	//减少
	public int downByGoods(int id, int count) throws Exception;
	
	
	
	
}
