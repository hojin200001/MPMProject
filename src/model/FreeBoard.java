package model;

import java.sql.Timestamp;

public class FreeBoard {
	private int num;
	private String title;
	private Timestamp createDay;
	private int freeCount;
	private String createName;
	private String conValue;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Timestamp getCreateDay() {
		return createDay;
	}
	public void setCreateDay(Timestamp createDay) {
		this.createDay = createDay;
	}
	public int getFreeCount() {
		return freeCount;
	}
	public void setFreeCount(int freeCount) {
		this.freeCount = freeCount;
	}
	public String getCreateName() {
		return createName;
	}
	public void setCreateName(String createName) {
		this.createName = createName;
	}
	public String getConValue() {
		return conValue;
	}
	public void setConValue(String conValue) {
		this.conValue = conValue;
	}
	
	
	@Override
	public String toString() {
		return "FreeBoard [num=" + num + ", title=" + title + ", createDay=" + createDay + ", freeCount=" + freeCount
				+ ", createName=" + createName + ", conValue=" + conValue + "]";
	}
	
}
