package org.mfm.travel.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 旅游攻略
 * 
 * @author MFM
 */
@Entity
@Table(name = "t_travel_strategy")
public class TravelStrategy {
	/**
	 * 攻略的数据库主键
	 */
	private int id;
	/**
	 * 攻略的名称
	 */
	private String name;
	/**
	 * 攻略的简介
	 */
	private String brief;
	/**
	 * 攻略的关键字
	 */
	private String keyword;
	/**
	 * 攻略的创建日期
	 */
	private Date createDate;
	/**
	 * 攻略的最近更新日期
	 */
	private Date modifyDate;
	/**
	 * 相关管理人员发布攻略
	 */
	private int userId;

	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(length = 30)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	@Column(columnDefinition="text")
	public String getBrief() {
		return brief;
	}

	public void setBrief(String brief) {
		this.brief = brief;
	}

	@Column(length = 30)
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Column(name = "create_date")
	@Temporal(TemporalType.TIMESTAMP)
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Column(name = "modify_date")
	@Temporal(TemporalType.TIMESTAMP)
	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	@Column(name="user_id")
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
}
