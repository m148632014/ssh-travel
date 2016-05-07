package org.mfm.travel.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_publicuser")
public class PublicUser {
	private int id;
	private String nickname;
	private int sex;
	private String liveCity;
	private String birthday;
	private String sign;
	private String email;
	private String password;
	private String phone;
	private String sinaWeiboName;
	private String qqZoneName;

	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getLiveCity() {
		return liveCity;
	}

	public void setLiveCity(String liveCity) {
		this.liveCity = liveCity;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSinaWeiboName() {
		return sinaWeiboName;
	}

	public void setSinaWeiboName(String sinaWeiboName) {
		this.sinaWeiboName = sinaWeiboName;
	}

	public String getQqZoneName() {
		return qqZoneName;
	}

	public void setQqZoneName(String qqZoneName) {
		this.qqZoneName = qqZoneName;
	}

}
