package com.pro.test;
import com.pro.entity.*;
import com.pro.dao.*;
public class test {
	public static void main(String args[]) throws Exception {
		//Users
		DingdanDao d=new DingdanImpl();
		UserDao u=new UserDaoImpl();
		Users u1=new Users();
		u1.setEmail("a@q");
		u1.setId(125);
		u1.setPassword("21");
		u1.setRowid(1);
		u1.setUsername("a");
		u1.setStatus(1);
		u1.setRowid(2);
		
		//Goods
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
		g.setUsers(u1);
		
		//Luxian
		LuxianDao lx=new LuxianDaoImpl();
		Luxian l=new Luxian();
		l.setId(125);
		l.setQishi("a");
		l.setStatus(0);
		l.setZhongzhi("b");
		
		
		
		
		//Shop
		Dingdan dd=new Dingdan();
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
		s.setUser(u1);
		s.setShopstatus(1);
		
		
		
		//Dingdan
		DingdanDao ddd=new DingdanImpl();
		//ddd.addDingdan(dd);
	//	ddd.findDingdan(u1);
		try {
			
			//Users
			u.addUser(u1);
			u.finByNameUser(u1.getUsername());
			u.findAllUser(1, 2);
			u.finByNameUsers(u1.getUsername());
			u.findPwd(u1.getEmail());
			u.UserLogin(u1);
			u.updateUser(u1);
			u.UserPages(1);
			u.findByIdUser(u1.getId());
			u.deleteByIdUsers(u1.getId());
			
			
			
			
			
			//Goods
		//	gd.addGood(g);
			gd.findAllGoods(1, 2);
			gd.findAllGoods(u1.getId(), 1, 2);
			gd.findByIdGoods(g.getId());
			gd.findGoodsByUseidAndGoodsname(g);
			gd.GoodsPages(125);
			gd.modifyGood(g);
			gd.GoodsPages(32);
			gd.downByGoods(1, 12);
			gd.deleteGood(g.getId());
			gd.deleteByIdGoods(g.getId());
			
			
		
			//Luxian
			lx.addLuxian(l);
			lx.finByNameLuxian(l.getQishi());
			lx.findAllluxian(1, 1);
			lx.findByIdLuxian(l.getId());
		//	lx.updateLuxian(l);
			lx.deleteByIdLuxian(l.getId());
			
			
			
			//Shop
		//	sd.addShop(s);
			sd.findShopID(s);
			
			
			//Dingdan
			
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();  
		
		}
	}
}

