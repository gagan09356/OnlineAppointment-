package com.service;

import com.connection.DbConnection;

public class EditUser {
		public int userEdit(String name,String address,String mobile,int id) {
		DbConnection obj=new DbConnection();
		int i=obj.updateUser(name, address, mobile, id);
				return i;
		}
}
