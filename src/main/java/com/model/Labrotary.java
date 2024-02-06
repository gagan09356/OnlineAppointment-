package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Labrotary {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	int LabTest_id;
	String LabTest_name ;
	String LabTest_desc;
	Double LabTest_price;
	String Pre_info;
	public int getLabTest_id() {
		return LabTest_id;
	}
	public void setLabTest_id(int labTest_id) {
		LabTest_id = labTest_id;
	}
	public String getLabTest_name() {
		return LabTest_name;
	}
	public void setLabTest_name(String labTest_name) {
		LabTest_name = labTest_name;
	}
	public String getLabTest_desc() {
		return LabTest_desc;
	}
	public void setLabTest_desc(String labTest_desc) {
		LabTest_desc = labTest_desc;
	}
	public Double getLabTest_price() {
		return LabTest_price;
	}
	public void setLabTest_price(Double labTest_price) {
		LabTest_price = labTest_price;
	}
	public String getPre_info() {
		return Pre_info;
	}
	public void setPre_info(String pre_info) {
		Pre_info = pre_info;
	}
	
}
