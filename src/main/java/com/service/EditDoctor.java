package com.service;

import com.connection.DbConnection;

public class EditDoctor {
		public int doctorEdit(String name,String specilization,String address,int experience,String email,String mobile,int id) {
			DbConnection connection=new DbConnection();
			int i=connection.updateDoctor(name, specilization, address, experience, email, mobile, id);
			return i;
		}
}
