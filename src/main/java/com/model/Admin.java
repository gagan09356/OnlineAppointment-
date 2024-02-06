package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Admin {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int admin_id;
	private String admin_name;
	private String admin_email_id;
	private String admin_password;
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_email_id() {
		return admin_email_id;
	}
	public void setAdmin_email_id(String admin_email_id) {
		this.admin_email_id = admin_email_id;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	public Admin(int admin_id, String admin_name, String admin_email_id, String admin_password) {
		super();
		this.admin_id = admin_id;
		this.admin_name = admin_name;
		this.admin_email_id = admin_email_id;
		this.admin_password = admin_password;
	}
	public Admin() {
		super();
	}
	
	
}
