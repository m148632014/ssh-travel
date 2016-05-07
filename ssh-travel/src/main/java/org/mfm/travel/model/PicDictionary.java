package org.mfm.travel.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="t_pic_ditctionary")
public class PicDictionary {
	private int id;
	/**
	 * 所属id
	 */
	private int ownerId;
	
	/**
	 * A：表示段落图片 B：表示游记图片 C:表示驴友计划的行程图片 D:表示用户头像 E:表示攻略封皮 F:表示驴友的生活照片 G:表示游记封皮
	 */
	private String pictype;
	
	private int picId;
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPictype() {
		return pictype;
	}

	@Column(name="owner_id")
	public int getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(int ownerId) {
		this.ownerId = ownerId;
	}

	public void setPictype(String pictype) {
		this.pictype = pictype;
	}
	@Column(name="pic_id")
	public int getPicId() {
		return picId;
	}

	public void setPicId(int picId) {
		this.picId = picId;
	}
	
	
	
}
