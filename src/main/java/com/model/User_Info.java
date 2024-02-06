package com.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class User_Info {
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int user_id;
	private String user_name;
	private String user_mobile_no;
	private String user_email_id;
	private String user_password;
	private String user_address;
	private byte[] user_password_salt;
	
	@OneToMany(mappedBy = "user_Info",cascade = CascadeType.ALL)
	private List<Appointment_Detail> appointment_Detail;

	

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_mobile_no() {
		return user_mobile_no;
	}

	public void setUser_mobile_no(String user_mobile_no) {
		this.user_mobile_no = user_mobile_no;
	}

	public String getUser_email_id() {
		return user_email_id;
	}

	public void setUser_email_id(String user_email_id) {
		this.user_email_id = user_email_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public byte[] getUser_password_salt() {
		return user_password_salt;
	}

	public void setUser_password_salt(byte[] user_password_salt) {
		this.user_password_salt = user_password_salt;
	}


	public User_Info( String user_name, String user_mobile_no, String user_email_id, String user_password,
			String user_address, byte[] user_password_salt) {
		super();
		this.user_name = user_name;
		this.user_mobile_no = user_mobile_no;
		this.user_email_id = user_email_id;
		this.user_password = user_password;
		this.user_address = user_address;
		this.user_password_salt = user_password_salt;
	}

	public User_Info() {
		super();
	}

	
}






