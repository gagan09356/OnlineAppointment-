package com.model;



import javax.persistence.*;

@Entity
public class Doctor_Schedule_Day {
	@Id private int doctor_schedule_day_id;
		@OneToOne
		@JoinColumn(name="doctor_schedule_id")
		private Doctor_Schedule doctor_Schedule;
	private String sunday=null;
	private String monday=null;
	private String tuesday=null;
	private String wednesday=null;
	private String thursday=null;
	private String friday=null;
	private String saturday=null;
	public int getDoctor_schedule_day_id() {
		return doctor_schedule_day_id;
	}
	public void setDoctor_schedule_day_id(int doctor_schedule_day_id) {
		this.doctor_schedule_day_id = doctor_schedule_day_id;
	}
	public Doctor_Schedule getDoctor_Schedule() {
		return doctor_Schedule;
	}
	public void setDoctor_Schedule(Doctor_Schedule doctor_Schedule) {
		this.doctor_Schedule = doctor_Schedule;
	}
	public String getSunday() {
		return sunday;
	}
	public void setSunday(String sunday) {
		this.sunday = sunday;
	}
	public String getMonday() {
		return monday;
	}
	public void setMonday(String monday) {
		this.monday = monday;
	}
	public String getTuesday() {
		return tuesday;
	}
	public void setTuesday(String tuesday) {
		this.tuesday = tuesday;
	}
	public String getWednesday() {
		return wednesday;
	}
	public void setWednesday(String wednesday) {
		this.wednesday = wednesday;
	}
	public String getThursday() {
		return thursday;
	}
	public void setThursday(String thursday) {
		this.thursday = thursday;
	}
	public String getFriday() {
		return friday;
	}
	public void setFriday(String friday) {
		this.friday = friday;
	}
	public String getSaturday() {
		return saturday;
	}
	public void setSaturday(String saturday) {
		this.saturday = saturday;
	}
	


	
}

