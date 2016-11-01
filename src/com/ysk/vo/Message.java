package com.ysk.vo;

import java.util.ArrayList;
import java.util.List;

public class Message {
	String lendperson;
	String lendcompany;
	String checkperson;
	String lenddate;
	String lendcounts;
	ArrayList<Passport> passports;
	public String getLendperson() {
		return lendperson;
	}
	public void setLendperson(String lendperson) {
		this.lendperson = lendperson;
	}
	public String getLendcompany() {
		return lendcompany;
	}
	public void setLendcompany(String lendcompany) {
		this.lendcompany = lendcompany;
	}
	public String getCheckperson() {
		return checkperson;
	}
	public void setCheckperson(String checkperson) {
		this.checkperson = checkperson;
	}
	public String getLenddate() {
		return lenddate;
	}
	public void setLenddate(String lenddate) {
		this.lenddate = lenddate;
	}
	public String getLendcounts() {
		return lendcounts;
	}
	public void setLendcounts(String lendcounts) {
		this.lendcounts = lendcounts;
	}
	public ArrayList<Passport> getPassports() {
		return passports;
	}
	public void setPassports(ArrayList<Passport> passports) {
		this.passports = passports;
	}
	
	
}