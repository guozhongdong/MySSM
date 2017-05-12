package com.gzd.dao;

import com.gzd.model.E_user;

import java.util.List;

public interface EuserMapper {

	/**
     * @param e_user user对象
     * no message
     */
    void insert(E_user e_user);
    
    /**
     *@param e_user user对象
     *@return 返回一个E_user集合
     */
    List<E_user> queryUser(E_user e_user);
    /**
     *@param id int类型的id
     */
    void delete(int id);
    /**
     *@param e_user 传入一个user对象
     */
    void updateUser(E_user e_user);
}
