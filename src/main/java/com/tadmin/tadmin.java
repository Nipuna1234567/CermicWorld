package com.tadmin;

public class tadmin {
	
	private int id;
	private String admin_name ;
	private String admin_mail;
	private String user_name ;
	private String password ;
	public tadmin(int id, String admin_name, String admin_mail, String user_name, String password) {
		super();
		this.id = id;
		this.admin_name = admin_name;
		this.admin_mail = admin_mail;
		this.user_name = user_name;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_mail() {
		return admin_mail;
	}
	public void setAdmin_mail(String admin_mail) {
		this.admin_mail = admin_mail;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
