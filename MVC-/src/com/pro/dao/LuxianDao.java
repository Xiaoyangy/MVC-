package com.pro.dao;

import java.util.List;

import javax.jws.soap.SOAPBinding.Use;

import com.pro.entity.Luxian;
import com.pro.entity.Users;

public interface LuxianDao {
//增加路线
public int addLuxian(Luxian luxian) throws Exception;
 //模糊查询用户
public List<Luxian> finByNameLuxian(String luxian)throws Exception;
//根据id删除路线
public int  deleteByIdLuxian(int id)throws Exception;
//查找第一页的数据
public List<Luxian> findAllluxian(int page, int number) throws Exception;
//查询所有路线的页数
public int LuxianPages(int number) throws Exception;
//修改路线
public boolean updateLuxian(Luxian luxian) throws Exception;
//通过id找到路线
 public Luxian findByIdLuxian(int id);
 public List<Luxian> findShengyu(int page, int number) throws Exception;
}
  