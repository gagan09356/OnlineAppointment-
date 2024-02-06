package com.service;

import java.sql.SQLException;

import com.connection.DbConnection;
import com.model.Doctor_Department;
import com.model.Doctor_Detail;

public class AddDoctor {
	
	public int addingDoctor(String name,String spec,String experience,String mobile,String address,String email,String depart,String path) throws SQLException {
	if((name!=null)&&(depart!=null)){
		DbConnection con=new DbConnection();
		Doctor_Department department=new Doctor_Department();
		department.setDoctor_department_id(Integer.parseInt(depart));
	Doctor_Detail detail=new Doctor_Detail();
	detail.setDoctor_name(name);
	detail.setdoctor_specialization(spec);
	detail.setdoctor_experience(Integer.parseInt(experience));
	detail.setDoctor_mobile(mobile);
	detail.setDoctor_email(email);
	detail.setDoctor_address(address);
	detail.setPhoto(path);
	System.out.println("department:::"+department);
	detail.setDoctor_department(department);
	//System.out.println(filepath);
	if(con.register(detail)>0){
		return 1;
		}
	else{
		System.out.println("not added");
		return 0;
	}
	}
	else{

		return 2;
	}
	}}
