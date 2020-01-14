package com.pro.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.pro.dao.GoodsDao;
import com.pro.dao.GoodsImpl;
import com.pro.dao.ShopDao;
import com.pro.dao.ShopImpl;
import com.pro.entity.Dingdan;
import com.pro.entity.Goods;
import com.pro.entity.Shop;

public class sp {

	@Test
	public void testFindShopID() throws Exception {
		Dingdan dd=new Dingdan();
		GoodsDao gd=new GoodsImpl();
		Goods g=new Goods();
		g.setComment("z");
		g.setCount(125);
		g.setDate("1982/12/12");
		g.setGoodsname("a");
		g.setId(124);
		g.setImage("asda");
		g.setPrice(1351);
		g.setStatus(0);
		dd.setCount(10);
		dd.setDingdanstatus(1);
		dd.setGoodsid(g.getId());
		dd.setGoodsname(g.getGoodsname());
		dd.setGoodsprice(g.getPrice());
		dd.setId(15);
		
		ShopDao sd=new ShopImpl();
		Shop s=new Shop();
		dd.setShop(s);
		s.setDate("2020/2/2");
		s.setDingdan(dd);
		dd.setShop(s);
		s.setId(125);
		s.setShopstatus(1);
		
		
	}

}
