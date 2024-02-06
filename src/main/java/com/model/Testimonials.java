package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Testimonials {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int testId;
	private String testname;
	private String testrole;
	private String testdescription;
	public int getTestId() {
		return testId;
	}
	public void setTestId(int testId) {
		this.testId = testId;
	}
	public String getTestname() {
		return testname;
	}
	public void setTestname(String testname) {
		this.testname = testname;
	}
	public String getTestrole() {
		return testrole;
	}
	public void setTestrole(String testrole) {
		this.testrole = testrole;
	}
	public String getTestdescription() {
		return testdescription;
	}
	public void setTestdescription(String testdescription) {
		this.testdescription = testdescription;
	}
	
}
