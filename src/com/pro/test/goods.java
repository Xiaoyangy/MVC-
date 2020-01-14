package com.pro.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.pro.dao.GoodsDao;
import com.pro.dao.GoodsImpl;
import com.pro.entity.Goods;

public class goods {

	@Test
	public void testAddGood() throws Exception {
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
	}

	@Test
	public void testFindGoodsByUseidAndGoodsname() throws Exception{
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
	}

	@Test
	public void testFindAllGoodsIntIntInt() throws Exception{
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
		gd.findAllGoods(1, 1, 1);
	}

	@Test
	public void testGoodsPages() throws Exception{
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
		gd.GoodsPages(1);
	}

	@Test
	public void testFindByIdGoods() throws Exception{
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
		gd.findByIdGoods(1);
	}

	@Test
	public void testModifyGood() throws Exception{
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
		gd.modifyGood(g);
	}

	@Test
	public void testDeleteGood() throws Exception{
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
		gd.deleteGood(1);
	}

	@Test
	public void testFindAllGoodsIntInt() throws Exception{
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
		gd.findAllGoods(1, 2);
	}

	@Test
	public void testDeleteByIdGoods() throws Exception{
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
		gd.deleteByIdGoods(1);
	}

	@Test
	public void testDownByGoods() throws Exception{
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
		gd.downByGoods(1, 10);
	}

}
