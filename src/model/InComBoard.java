package model;

import java.util.Date;

public class InComBoard {
	private int cnum;
	private String nomalId;
	private String phone;
	private Date joinDay;
	
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getNomalId() {
		return nomalId;
	}
	public void setNomalId(String nomalId) {
		this.nomalId = nomalId;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getJoinDay() {
		return joinDay;
	}
	public void setJoinDay(Date joinDay) {
		this.joinDay = joinDay;
	}
	@Override
	public String toString() {
		return "inComBoard [cnum=" + cnum + ", nomalId=" + nomalId + ", phone=" + phone + ", joinDay=" + joinDay + "]";
	}
	
}
