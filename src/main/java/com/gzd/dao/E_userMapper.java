package com.gzd.dao;

import java.util.List;

import com.gzd.model.E_user;

public interface E_userMapper {

	/**
     * ����һ����¼
     * @param person
     */
   void insert(E_user e_user);
    
    /**
     * ��ѯ����
     * @return
     */
   List<E_user> queryUser(E_user e_user);
   
   public void delete(int id);
   
   public void updateUser(E_user e_user);
}
