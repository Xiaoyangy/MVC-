package com.pro.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.pro.dao.LuxianDao;
import com.pro.dao.LuxianDaoImpl;
import com.pro.entity.Luxian;

public class teeaz {
	static {
	LuxianDao lx=new LuxianDaoImpl();
	Luxian l=new Luxian();
	l.setId(125);
	l.setQishi("a");
	l.setStatus(0);
	l.setZhongzhi("b");
	}
	@Test
	public void testAddLuxian() throws Exception {
		LuxianDao lx=new LuxianDaoImpl();
		Luxian l=new Luxian();
		l.setId(125);
		l.setQishi("a");
		l.setStatus(0);
		l.setZhongzhi("b");
		
		lx.addLuxian(l);
	    assertEquals("Account should start with no funds.",1,1);
	}

	@Test
	public void testFinByNameLuxian() throws Exception {
		LuxianDao lx=new LuxianDaoImpl();
		Luxian l=new Luxian();
		l.setId(125);
		l.setQishi("a");
		l.setStatus(0);
		l.setZhongzhi("b");
		
		lx.finByNameLuxian(l.getQishi());
	    assertEquals("Account should start with no funds.",1,1);
	}

	@Test
	public void testDeleteByIdLuxian() throws Exception {
		LuxianDao lx=new LuxianDaoImpl();
		Luxian l=new Luxian();
		l.setId(125);
		l.setQishi("a");
		l.setStatus(0);
		l.setZhongzhi("b");
		
		lx.findByIdLuxian(l.getId());
	    assertEquals("Account should start with no funds.",1,1);
	}

	@Test
	public void testFindAllluxian() throws Exception {
		LuxianDao lx=new LuxianDaoImpl();
		Luxian l=new Luxian();
		l.setId(125);
		l.setQishi("a");
		l.setStatus(0);
		l.setZhongzhi("b");
		
		lx.findAllluxian(1, 10);
	    assertEquals("Account should start with no funds.",1,1);
	}

	@Test
	public void testLuxianPages() throws Exception {
		LuxianDao lx=new LuxianDaoImpl();
		Luxian l=new Luxian();
		l.setId(125);
		l.setQishi("a");
		l.setStatus(0);
		l.setZhongzhi("b");
		
		lx.LuxianPages(2);
	    assertEquals("Account should start with no funds.",1,1);
	}

	@Test
	public void testUpdateLuxian() throws Exception {
		LuxianDao lx=new LuxianDaoImpl();
		Luxian l=new Luxian();
		l.setId(125);
		l.setQishi("a");
		l.setStatus(0);
		l.setZhongzhi("b");
		
		lx.updateLuxian(l);
	    assertEquals("Account should start with no funds.",1,1);
	}

	@Test
	public void testFindByIdLuxian() {
		LuxianDao lx=new LuxianDaoImpl();
		Luxian l=new Luxian();
		l.setId(125);
		l.setQishi("a");
		l.setStatus(0);
		l.setZhongzhi("b");
		lx.findByIdLuxian(l.getId());
	    assertEquals("Account should start with no funds.",1,1);
	}

}
