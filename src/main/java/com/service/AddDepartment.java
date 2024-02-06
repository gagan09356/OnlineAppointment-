package com.service;

import java.sql.SQLException;

import com.connection.DbConnection;
import com.model.Doctor_Department;

public class AddDepartment {
		public int addingDepartment(String name,String disc) throws SQLException {
			if(name!=null&&disc!=null){
					DbConnection con=new DbConnection();
					Doctor_Department dept=new Doctor_Department();
					dept.setDepartment_name(name);
					dept.setDepartment_discription(disc);
					if(con.register(dept)>0)
						//System.out.println("Sucessfully added");
						return 1;
					else 
						return 0;
			}
			else 
				return 2;
		}
}
