package com.model;

import java.util.List;

import javax.persistence.*;

@Entity
public class Doctor_Department {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int doctor_department_id;
	private String department_name;
	private String department_discription;
	
	@OneToMany(mappedBy = "doctor_department",cascade = CascadeType.ALL)
	List<Doctor_Detail> doctor_Detail;
	
	public int getDoctor_department_id() {
		return doctor_department_id;
	}
	public void setDoctor_department_id(int doctor_department_id) {
		this.doctor_department_id = doctor_department_id;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public String getDepartment_discription() {
		return department_discription;
	}
	public void setDepartment_discription(String department_discription) {
		this.department_discription = department_discription;
	}
	@Override
	public String toString() {
		return "Doctor_Department [doctor_department_id=" + doctor_department_id + ", department_name="
				+ department_name + ", department_discription=" + department_discription + ", doctor_Detail="
				+ doctor_Detail + "]";
	}
	
	
	
}

