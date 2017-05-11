package model;

public class FreeReplyVo {
	
	private String reNum;
    private String num;
    private String reName;
    private String teText;
    private String reDay;
    
    
	public String getReNum() {
		return reNum;
	}
	public void setReNum(String reNum) {
		this.reNum = reNum;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getReName() {
		return reName;
	}
	public void setReName(String reName) {
		this.reName = reName;
	}
	public String getTeText() {
		return teText;
	}
	public void setTeText(String teText) {
		this.teText = teText;
	}
	public String getReDay() {
		return reDay;
	}
	public void setReDay(String reDay) {
		this.reDay = reDay;
	}
	
	
	
	@Override
	public String toString() {
		return "FreeBoardReplyVo [reNum=" + reNum + ", num=" + num + ", reName=" + reName + ", teText=" + teText
				+ ", reDay=" + reDay + "]";
	}
    
}
