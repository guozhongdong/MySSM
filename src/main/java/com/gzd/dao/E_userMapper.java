package com.gzd.dao;

import java.util.List;

import com.gzd.model.E_user;

public interface E_userMapper {

	/**
     * 插入一条记录
     * @param person
     */
   void insert(E_user e_user);
    
    /**
     * 查询所有
     * @return
     */
   List<E_user> queryUser(E_user e_user);
   
   public void delete(int id);
   
   public void updateUser(E_user e_user);
}
