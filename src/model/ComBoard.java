package model;

import java.util.Date;

public class ComBoard {
	private int cnum;
	private String comName;
	private String ctitle;
	private String carea;
	private String cjob;
	private String ccarrer;
	private String comPhone;
	private String comEmail;
	private String cday;
	private int cwokers;
	private int cpay;
	private String ctext;
	private int ccount;
	private Date createDay;
	private String comId;
	private String cxy;
	private String addr2;
	private String cstartDay;
	private String cendDay;
	private String carea2;
	
	public String getCarea2() {
		return carea2;
	}
	public void setCarea2(String carea2) {
		this.carea2 = carea2;
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
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getCxy() {
		return cxy;
	}
	public void setCxy(String cxy) {
		this.cxy = cxy;
	}
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public String getCtitle() {
		return ctitle;
	}
	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}
	public String getCarea() {
		return carea;
	}
	public void setCarea(String carea) {
		this.carea = carea;
	}
	public String getCjob() {
		return cjob;
	}
	public void setCjob(String cjob) {
		this.cjob = cjob;
	}
	public String getCcarrer() {
		return ccarrer;
	}
	public void setCcarrer(String ccareer) {
		this.ccarrer = ccareer;
	}
	public String getComPhone() {
		return comPhone;
	}
	public void setComPhone(String comPhone) {
		this.comPhone = comPhone;
	}
	public String getComEmail() {
		return comEmail;
	}
	public void setComEmail(String comEmail) {
		this.comEmail = comEmail;
	}
	public String getCday() {
		return cday;
	}
	public void setCday(String cday) {
		this.cday = cday;
	}
	public int getCwokers() {
		return cwokers;
	}
	public void setCwokers(int cwokers) {
		this.cwokers = cwokers;
	}
	public int getCpay() {
		return cpay;
	}
	public void setCpay(int cpay) {
		this.cpay = cpay;
	}
	public String getCtext() {
		return ctext;
	}
	public void setCtext(String ctext) {
		this.ctext = ctext;
	}
	public int getCcount() {
		return ccount;
	}
	public void setCcount(int ccount) {
		this.ccount = ccount;
	}
	public Date getCreateDay() {
		return createDay;
	}
	public void setCreateDay(Date createDay) {
		this.createDay = createDay;
	}
	public String getComId() {
		return comId;
	}
	public void setComId(String comId) {
		this.comId = comId;
	}
	@Override
	public String toString() {
		return "ComBoard [cnum=" + cnum + ", comName=" + comName + ", ctitle=" + ctitle + ", carea=" + carea + ", cjob="
				+ cjob + ", ccareer=" + ccarrer + ", comPhone=" + comPhone + ", comEmail=" + comEmail + ", cday=" + cday
				+ ", cwokers=" + cwokers + ", cpay=" + cpay + ", ctext=" + ctext + ", ccount=" + ccount + ", createDay="
				+ createDay + ", comId=" + comId + "]";
	}
	
}
