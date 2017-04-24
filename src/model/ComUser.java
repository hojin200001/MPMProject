package model;

import java.util.Date;

public class ComUser {
	private String comId;
	private String comName;
	private String comEmail;
	private String comPass;
	private String comMname;
	private String comPhone;
	private String comPhone2;
	private String comAddr;
	private String comAddr2;
	private String comNum;
	private String comPhto;
	private Date joinDay;
	private int point;
	public String getComId() {
		return comId;
	}
	public void setComId(String comId) {
		this.comId = comId;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public String getComEmail() {
		return comEmail;
	}
	public void setComEmail(String comEmail) {
		this.comEmail = comEmail;
	}
	public String getComPass() {
		return comPass;
	}
	public void setComPass(String comPass) {
		this.comPass = comPass;
	}
	public String getComMname() {
		return comMname;
	}
	public void setComMname(String comMname) {
		this.comMname = comMname;
	}
	public String getComPhone() {
		return comPhone;
	}
	public void setComPhone(String comPhone) {
		this.comPhone = comPhone;
	}
	public String getComPhone2() {
		return comPhone2;
	}
	public void setComPhone2(String comPhone2) {
		this.comPhone2 = comPhone2;
	}
	public String getComAddr() {
		return comAddr;
	}
	public void setComAddr(String comAddr) {
		this.comAddr = comAddr;
	}
	public String getComAddr2() {
		return comAddr2;
	}
	public void setComAddr2(String comAddr2) {
		this.comAddr2 = comAddr2;
	}
	public String getComNum() {
		return comNum;
	}
	public void setComNum(String comNum) {
		this.comNum = comNum;
	}
	public String getComPhto() {
		return comPhto;
	}
	public void setComPhto(String comPhto) {
		this.comPhto = comPhto;
	}
	public Date getJoinDay() {
		return joinDay;
	}
	public void setJoinDay(Date joinDay) {
		this.joinDay = joinDay;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	@Override
	public String toString() {
		return "ComUser [comId=" + comId + ", comName=" + comName + ", comEmail=" + comEmail + ", comPass=" + comPass
				+ ", comMname=" + comMname + ", comPhone=" + comPhone + ", comPhone2=" + comPhone2 + ", comAddr="
				+ comAddr + ", comAddr2=" + comAddr2 + ", comNum=" + comNum + ", comPhto=" + comPhto + ", joinDay="
				+ joinDay + ", point=" + point + "]";
	}
	
}
