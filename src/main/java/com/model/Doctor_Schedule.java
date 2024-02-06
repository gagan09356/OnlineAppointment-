package com.model;

import java.sql.Time;

import javax.persistence.*;

@Entity
public class Doctor_Schedule {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int doctor_schedule_id;
	@ManyToOne
	@JoinColumn(name = "doctor_id")
	private Doctor_Detail doctor_Detail;
	private Time time_start;
	private Time time_end;
	
	@OneToOne(mappedBy = "doctor_Schedule")
	private Doctor_Schedule_Day schedule_Day;

	public int getDoctor_schedule_id() {
		return doctor_schedule_id;
	}

	public void setDoctor_schedule_id(int doctor_schedule_id) {
		this.doctor_schedule_id = doctor_schedule_id;
	}

	public Doctor_Detail getDoctor_Detail() {
		return doctor_Detail;
	}

	public void setDoctor_Detail(Doctor_Detail doctor_Detail) {
		this.doctor_Detail = doctor_Detail;
	}

	public Time getTime_start() {
		return time_start;
	}

	public void setTime_start(Time time_start) {
		this.time_start = time_start;
	}

	public Time getTime_end() {
		return time_end;
	}

	public void setTime_end(Time time_end) {
		this.time_end = time_end;
	}

	public Doctor_Schedule_Day getSchedule_Day() {
		return schedule_Day;
	}

	public void setSchedule_Day(Doctor_Schedule_Day schedule_Day) {
		this.schedule_Day = schedule_Day;
	}
	
	
	
	}



