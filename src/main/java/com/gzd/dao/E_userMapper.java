package com.gzd.dao;

import java.util.List;

import com.gzd.model.E_user;
import com.gzd.model.Person;

public interface E_userMapper {

	/**
     * ����һ����¼
     * @param person
     */
   public  void insert(E_user e_user);
    
    /**
     * ��ѯ����
     * @return
     */
    public List<E_user> queryUser();
}
