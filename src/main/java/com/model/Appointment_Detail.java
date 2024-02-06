package com.model;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Appointment_Detail {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int appointment_id ;//database id
	private String patient_name;
	private String patient_email;
	private String patient_mobile;
	private Date appointment_date;
	private Date appointment_time;
	
	@ManyToOne
	@JoinColumn(name="user_id")
	private User_Info user_Info;
	
	@ManyToOne
	@JoinColumn(name="doctor_id")
	private Doctor_Detail doctor_Detail;

	public int getAppointment_id() {
		return appointment_id;
	}

	public void setAppointment_id(int appointment_id) {
		this.appointment_id = appointment_id;
	}

	public String getPatient_name() {
		return patient_name;
	}

	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
	}

	public String getPatient_email() {
		return patient_email;
	}

	public void setPatient_email(String patient_email) {
		this.patient_email = patient_email;
	}

	public String getPatient_mobile() {
		return patient_mobile;
	}

	public void setPatient_mobile(String patient_mobile) {
		this.patient_mobile = patient_mobile;
	}

	public Date getAppointment_date() {
		return appointment_date;
	}

	public void setAppointment_date(Date appointment_date) {
		this.appointment_date = appointment_date;
	}

	public Date getAppointment_time() {
		return appointment_time;
	}

	public void setAppointment_time(Date appointment_time) {
		this.appointment_time = appointment_time;
	}

	public User_Info getUser_Info() {
		return user_Info;
	}

	public void setUser_Info(User_Info user_Info) {
		this.user_Info = user_Info;
	}

	public Doctor_Detail getDoctor_Detail() {
		return doctor_Detail;
	}

	public void setDoctor_Detail(Doctor_Detail doctor_Detail) {
		this.doctor_Detail = doctor_Detail;
	}
/*
	@Override
	public String toString() {
		return "Appointment_Detail [appointment_id=" + appointment_id + ", patient_name=" + patient_name
				+ ", patient_email=" + patient_email + ", patient_mobile=" + patient_mobile + ", appointment_date="
				+ appointment_date + ", appointment_time=" + appointment_time + ", user_Info=" + user_Info
				+ ", doctor_Detail=" + doctor_Detail + "]";
	}
	*/
	
}