package model;

public class ComDay {
	private int cnum;
	private String cstartDay;
	private String cendDay;
	private boolean deadline;
	
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getCstartDay() {
		return cstartDay;
	}
	public void setCstartDay(String cstartDay) {
		this.cstartDay = cstartDay;
	}
	public String getCendDay() {
		return cendDay;
	}
	public void setCendDay(String cendDay) {
		this.cendDay = cendDay;
	}
	public boolean isDeadline() {
		return deadline;
	}
	public void setDeadline(boolean deadline) {
		this.deadline = deadline;
	}
	
}
