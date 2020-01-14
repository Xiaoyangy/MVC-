package com.pro.biz;

import java.util.List;

import com.pro.dao.GoodsfDao;
import com.pro.dao.GoodsfImpl;
import com.pro.entity.Goodsf;

public abstract class GoodsfBizImpl implements  GoodsfBiz {
  private  GoodsfDao goodsfdao=new GoodsfImpl();
	@Override
	public int addGood(Goodsf good) throws Exception {
		// TODO Auto-generated method stub
		return goodsfdao.addGood(good);
	}
	@Override
	public List<Goodsf> findGoodsByUseidAndGoodsname(Goodsf goods)
			throws Exception {
		return goodsfdao.findGoodsByUseidAndGoodsname(goods);
	}
	@Override
	public List<Goodsf> findAllGoods(int userid,int page,int number) throws Exception {
		// TODO Auto-generated method stub
		return goodsfdao.findAllGoods(userid,page,number);
	}
	@Override
	public int GoodsPages(int number) throws Exception {
		return goodsfdao.GoodsPages(number);
	}
	@Override
	public Goodsf findByIdGoods(int id) throws Exception {
		
		return goodsfdao.findByIdGoods(id);
	}
	@Override
	public int modifyGood(Goodsf good) throws Exception {
		// TODO Auto-generated method stub
		return goodsfdao.modifyGood(good);
	}
	@Override
	public int deleteGood(int id) throws Exception {
		// TODO Auto-generated method stub
		return goodsfdao.deleteGood(id);
	}
	@Override
	public List<Goodsf> findAllGoodsf(int page, int number) throws Exception {
		// TODO Auto-generated method stub
		return goodsfdao.findAllGoods(page, number);
	}
	@Override
	public int deleteByIdGoods(int id) throws Exception {
		return goodsfdao.deleteByIdGoods(id);
	}
	@Override
	public int downByGoods(int id, int count) throws Exception {
		// TODO Auto-generated method stub
		return goodsfdao.downByGoods(id, count);
	}
	
}
