package userManage.dto;

import java.util.Date;

public class UserManageDTO {
	private String id;
	private String pw;
	private String name;
	private Date birth;
	private String gender;
	private String email;
	private String hp;
	private String address;
	private String ad;
	private Date join_date;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAd() {
		return ad;
	}
	public void setAd(String ad) {
		this.ad = ad;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public UserManageDTO() {
		
	}
	@Override
	public String toString() {
		return "UserManageDTO [id=" + id + ", pw=" + pw + ", name=" + name + ", birth=" + birth + ", gender=" + gender
				+ ", email=" + email + ", hp=" + hp + ", address=" + address + ", ad=" + ad + ", join_date=" + join_date
				+ "]";
	}
	public UserManageDTO(String id, String pw,String name, Date birth, String gender, String email, String hp,
			String address, String ad, Date join_date) {
		
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.email = email;
		this.hp = hp;
		this.address = address;
		this.ad = ad;
		this.join_date = join_date;
	}
	
}
