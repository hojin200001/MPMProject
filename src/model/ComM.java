package model;

import java.util.Date;

public class ComM {
	private int cmnum;
	private int cnum;
	private String nomalId;
	private String comId;
	private String cmtext;
	private int reception;
	private Date day;
	public Date getDay() {
		return day;
	}
	public void setDay(Date day) {
		this.day = day;
	}
	public int getCmnum() {
		return cmnum;
	}
	public void setCmnum(int cmnum) {
		this.cmnum = cmnum;
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
	public String getComId() {
		return comId;
	}
	public void setComId(String comId) {
		this.comId = comId;
	}
	public String getCmtext() {
		return cmtext;
	}
	public void setCmtext(String cmtext) {
		this.cmtext = cmtext;
	}
	public int getReception() {
		return reception;
	}
	public void setReception(int reception) {
		this.reception = reception;
	}
	@Override
	public String toString() {
		return "ComM [cmnum=" + cmnum + ", cnum=" + cnum + ", nomalId=" + nomalId + ", comId=" + comId + ", cmtext="
				+ cmtext + ", reception=" + reception + ", day=" + day + "]";
	}
	
	
}
