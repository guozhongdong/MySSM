package com.gzd.service;

import com.gzd.model.E_user;

import java.util.List;

public interface UserService {

	public List<E_user> loadQueryUser(E_user e_user);
	
	public void inserInto(E_user e_user);
	
	public void deleteOne(int id);
	
	public void updateOne(E_user e_user);
}
