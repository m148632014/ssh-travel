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
 * 驴友活动行程计划信息
 * 
 * @author MFM
 *
 */
@Entity
@Table(name="t_travle_route")
public class TravelRoute {
	private int id;
	/**
	 * 简介
	 */
	private String brief;
	/**
	 * 出发地
	 */
	private String beginPlace;
	/**
	 * 目的地
	 */
	private String destination;
	/**
	 *  开始时间
	 */
	private Date beginDate;
	/**
	 * 结束时间
	 */
	private Date endDate;
	/**
	 * F:表示驴友的生活照片
	 */
	private String pictype;
	/**
	 * 发起驴友活动的用户
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

	public String getBrief() {
		return brief;
	}

	public void setBrief(String brief) {
		this.brief = brief;
	}
	@Column(name="begin_place")
	public String getBeginPlace() {
		return beginPlace;
	}

	public void setBeginPlace(String beginPlace) {
		this.beginPlace = beginPlace;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getPictype() {
		return pictype;
	}

	public void setPictype(String pictype) {
		this.pictype = pictype;
	}

	@Column(name = "user_id")
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Column(name="begin_date")
	@Temporal(TemporalType.TIMESTAMP)
	public Date getBeginDate() {
		return beginDate;
	}

	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}
	@Column(name="end_date")
	@Temporal(TemporalType.TIMESTAMP)
	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

}
