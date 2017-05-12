package com.gzd.dao;

import com.gzd.model.E_user;

import java.util.List;

public interface EuserMapper {

	/**
     * @param e_user user����
     * no message
     */
    void insert(E_user e_user);
    
    /**
     *@param e_user user����
     *@return ����һ��E_user����
     */
    List<E_user> queryUser(E_user e_user);
    /**
     *@param id int���͵�id
     */
    void delete(int id);
    /**
     *@param e_user ����һ��user����
     */
    void updateUser(E_user e_user);
}
