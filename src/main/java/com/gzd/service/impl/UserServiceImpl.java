package com.gzd.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gzd.dao.E_userMapper;
import com.gzd.model.E_user;
import com.gzd.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	private E_userMapper e_usermapper;
	
	public E_userMapper getE_usermapper() {
		return e_usermapper;
	}
	@Autowired
	public void setE_usermapper(E_userMapper e_usermapper) {
		this.e_usermapper = e_usermapper;
	}

	public List<E_user> loadQueryUser() {
		
		
		return e_usermapper.queryUser();
	}

	
	public static void main(String[] args) {
		
		UserServiceImpl uServiceImpl = new UserServiceImpl();
		List<E_user> list = uServiceImpl.loadQueryUser();
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i));
		}
	}
}
