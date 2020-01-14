package com.pro.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.pro.dao.UserDao;
import com.pro.dao.UserDaoImpl;
import com.pro.entity.Users;

public class us {

	@Test
	public void testAddUser() throws Exception {
		UserDao u=new UserDaoImpl();
		Users u1=new Users();
		u1.setEmail("a@q");
		u1.setId(125);
		u1.setPassword("21");
		u1.setRowid(1);
		u1.setUsername("a");
		u1.setStatus(1);
		u1.setRowid(2);
		u.addUser(u1);
	}

	@Test
	public void testFindPwd() throws Exception  {
		UserDao u=new UserDaoImpl();
		Users u1=new Users();
		u1.setEmail("a@q");
		u1.setId(125);
		u1.setPassword("21");
		u1.setRowid(1);
		u1.setUsername("a");
		u1.setStatus(1);
		u1.setRowid(2);
		u.findPwd(u1.getEmail());
	}

	@Test
	public void testFinByNameUsers() throws Exception {
		UserDao u=new UserDaoImpl();
		Users u1=new Users();
		u1.setEmail("a@q");
		u1.setId(125);
		u1.setPassword("21");
		u1.setRowid(1);
		u1.setUsername("a");
		u1.setStatus(1);
		u1.setRowid(2);
		u.finByNameUsers(u1.getUsername());
	}

	@Test
	public void testFindAllUser() throws Exception {
		UserDao u=new UserDaoImpl();
		Users u1=new Users();
		u1.setEmail("a@q");
		u1.setId(125);
		u1.setPassword("21");
		u1.setRowid(1);
		u1.setUsername("a");
		u1.setStatus(1);
		u1.setRowid(2);
		u.findAllUser(1, 10);
	}

	@Test
	public void testUserPages() throws Exception {
		UserDao u=new UserDaoImpl();
		Users u1=new Users();
		u1.setEmail("a@q");
		u1.setId(125);
		u1.setPassword("21");
		u1.setRowid(1);
		u1.setUsername("a");
		u1.setStatus(1);
		u1.setRowid(2);
		u.UserPages(10);
	}

	@Test
	public void testDeleteByIdUsers() throws Exception  {
		UserDao u=new UserDaoImpl();
		Users u1=new Users();
		u1.setEmail("a@q");
		u1.setId(125);
		u1.setPassword("21");
		u1.setRowid(1);
		u1.setUsername("a");
		u1.setStatus(1);
		u1.setRowid(2);
		u.deleteByIdUsers(u1.getId());
	}

	@Test
	public void testFinByNameUser() throws Exception {
		UserDao u=new UserDaoImpl();
		Users u1=new Users();
		u1.setEmail("a@q");
		u1.setId(125);
		u1.setPassword("21");
		u1.setRowid(1);
		u1.setUsername("a");
		u1.setStatus(1);
		u1.setRowid(2);
		u.finByNameUser(u1.getUsername());
	}

	@Test
	public void testFindByIdUser() throws Exception {
		UserDao u=new UserDaoImpl();
		Users u1=new Users();
		u1.setEmail("a@q");
		u1.setId(125);
		u1.setPassword("21");
		u1.setRowid(1);
		u1.setUsername("a");
		u1.setStatus(1);
		u1.setRowid(2);
		u.findByIdUser(u1.getId());
	}

}
