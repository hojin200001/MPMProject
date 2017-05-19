package model;

import java.util.Date;

public class NomalM {
	private int nmnum;
	private int cnum;
	private String nomalId;
	private String nmtext;
	private int reception;
	private Date day;
	
	public Date getDay() {
		return day;
	}
	public void setDay(Date day) {
		this.day = day;
	}
	public int getNmnum() {
		return nmnum;
	}
	public void setNmnum(int nmnum) {
		this.nmnum = nmnum;
	}
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
	public String getNmtext() {
		return nmtext;
	}
	public void setNmtext(String nmtext) {
		this.nmtext = nmtext;
	}
	public int getReception() {
		return reception;
	}
	public void setReception(int reception) {
		this.reception = reception;
	}
	@Override
	public String toString() {
		return "NomalM [nmnum=" + nmnum + ", cnum=" + cnum + ", nomalId=" + nomalId + ", nmtext=" + nmtext
				+ ", reception=" + reception + ", day=" + day + "]";
	}
	
}
