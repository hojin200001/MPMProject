package model;

import java.util.Date;

public class ComDay {
	private int cnum;
	private Date cstartDay;
	private Date cendDay;
	private boolean deadline;
	
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public Date getCstartDay() {
		return cstartDay;
	}
	public void setCstartDay(Date cstartDay) {
		this.cstartDay = cstartDay;
	}
	public Date getCendDay() {
		return cendDay;
	}
	public void setCendDay(Date cendDay) {
		this.cendDay = cendDay;
	}
	public boolean isDeadline() {
		return deadline;
	}
	public void setDeadline(boolean deadline) {
		this.deadline = deadline;
	}
	
}
