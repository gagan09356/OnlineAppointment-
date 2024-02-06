package com.model;

import java.sql.Blob;
import java.util.List;

import javax.persistence.*;

@Entity
public class Doctor_Detail {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int doctor_id;
	private String doctor_name;
	private String doctor_specialization;//change
	private int doctor_experience;//change
	private String doctor_mobile;
	private String doctor_email;
	private String doctor_address;
	private String photo;
	
	@ManyToOne
	@JoinColumn(name = "doctor_department_id")
	private Doctor_Department doctor_department;
	
	@OneToMany(mappedBy = "doctor_Detail",cascade = CascadeType.ALL)
	private List<Doctor_Schedule> doctor_Schedule;
	
	@OneToMany(mappedBy = "doctor_Detail",cascade = CascadeType.ALL)
	private List<Appointment_Detail> appointment_Detail;

	public int getDoctor_id() {
		return doctor_id;
	}

	public void setDoctor_id(int doctor_id) {
		this.doctor_id = doctor_id;
	}

	public String getDoctor_name() {
		return doctor_name;
	}

	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}

	public String getdoctor_specialization() {
		return doctor_specialization;
	}

	public void setdoctor_specialization(String doctor_specialization) {
		this.doctor_specialization = doctor_specialization;
	}

	public int getdoctor_experience() {
		return doctor_experience;
	}

	public void setdoctor_experience(int doctor_experience) {
		this.doctor_experience = doctor_experience;
	}

	public String getDoctor_mobile() {
		return doctor_mobile;
	}

	public void setDoctor_mobile(String doctor_mobile) {
		this.doctor_mobile = doctor_mobile;
	}

	public String getDoctor_email() {
		return doctor_email;
	}

	public void setDoctor_email(String doctor_email) {
		this.doctor_email = doctor_email;
	}

	public String getDoctor_address() {
		return doctor_address;
	}

	public void setDoctor_address(String doctor_address) {
		this.doctor_address = doctor_address;
	}

	public Doctor_Department getDoctor_department() {
		return doctor_department;
	}

	public void setDoctor_department(Doctor_Department doctor_department) {
		this.doctor_department = doctor_department;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}
	

	

	
	
	

}



