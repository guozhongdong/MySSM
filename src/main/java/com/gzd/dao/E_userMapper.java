package com.gzd.dao;

import java.util.List;

import com.gzd.model.E_user;
import com.gzd.model.Person;

public interface E_userMapper {

	/**
     * 插入一条记录
     * @param person
     */
   public  void insert(E_user e_user);
    
    /**
     * 查询所有
     * @return
     */
    public List<E_user> queryUser();
}
