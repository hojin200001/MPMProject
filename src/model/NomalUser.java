package model;
import java.sql.Timestamp;

public class NomalUser {
//	이름 name(not null)			varchar(20)
	private String name;
//	나이 age(not null)			int
	private int age;
//	주소 add(not null)			varchar(40)
	private String add;
//	전화번호 phone(not null)		varchar(20)
	private String phone;
//	가입일 joinDay				date
	private Timestamp joinDay;
//	이메일 email(not null)			varchar(20)
	private String email;
//	아이디 nomalId(not null,primary key)	varchar(20)
	private String nomalId;
//	비번 nomalPass(not null)		varchar(41)
	private String nomalPass;
//	라이센스 license			varchar(100)
	private String license;
//	포인트 nomalPoint			int
	private int nomalPoint;
//	정보공개유무 inpoDis(not null)		boolean
//	private Boolean inpoDis;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAdd() {
		return add;
	}
	public void setAdd(String add) {
		this.add = add;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Timestamp getJoinDay() {
		return joinDay;
	}
	public void setJoinDay(Timestamp joinDay) {
		this.joinDay = joinDay;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNomalId() {
		return nomalId;
	}
	public void setNomalId(String nomalId) {
		this.nomalId = nomalId;
	}
	public String getNomalPass() {
		return nomalPass;
	}
	public void setNomalPass(String nomalPass) {
		this.nomalPass = nomalPass;
	}
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public int getNomalPoint() {
		return nomalPoint;
	}
	public void setNomalPoint(int nomalPoint) {
		this.nomalPoint = nomalPoint;
	}

	@Override
	public String toString() {
		return "nomalUser [name=" + name + ", age=" + age + ", add=" + add + ", phone=" + phone + ", joinDay=" + joinDay
				+ ", email=" + email + ", nomalId=" + nomalId + ", nomalPass=" + nomalPass + ", license=" + license
				+ ", nomalPoint=" + nomalPoint + "]";
	}
}
