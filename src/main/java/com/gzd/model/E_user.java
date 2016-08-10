package com.gzd.model;

public class E_user {

	private int id;
	private String username;
	private String password;
	private String loginid;
	private int age;
	private int sex;
	private String email;
	private int phone;
	private String extends1;
	private String extends2;
	private String extends3;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getLoginid() {
		return loginid;
	}
	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getExtends1() {
		return extends1;
	}
	public void setExtends1(String extends1) {
		this.extends1 = extends1;
	}
	public String getExtends2() {
		return extends2;
	}
	public void setExtends2(String extends2) {
		this.extends2 = extends2;
	}
	public String getExtends3() {
		return extends3;
	}
	public void setExtends3(String extends3) {
		this.extends3 = extends3;
	}
	public String toString(){
		
		return "username="+this.username;
	}

}
