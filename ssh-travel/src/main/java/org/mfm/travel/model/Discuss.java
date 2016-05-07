package org.mfm.travel.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 评论
 * @author MFM
 *
 */
@Entity
@Table(name = "t_discuss")
public class Discuss {
	private int id;
	private String content;
	private Date createDate;

	/**
	 * 如果存在，表示该评论属于哪个攻略
	 */
	private int travelStrategyId;
	/**
	 * 如果存在，表示该评论属于哪个游记
	 */
	private int travelNoteId;

	/**
	 * 如果存在，表示该评论属于哪个驴友行程
	 */
	private int travelRouteId;
	/**
	 * 某一条评论的评论
	 */
	private Discuss discuss;
	/**
	 * 发表评论的用户信息
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "create_date")
	@Temporal(TemporalType.TIMESTAMP)
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Column(name = "travel_strategy_id")
	public int getTravelStrategyId() {
		return travelStrategyId;
	}

	public void setTravelStrategyId(int travelStrategyId) {
		this.travelStrategyId = travelStrategyId;
	}
	@Column(name="travel_note_id")
	public int getTravelNoteId() {
		return travelNoteId;
	}

	public void setTravelNoteId(int travelNoteId) {
		this.travelNoteId = travelNoteId;
	}
	
	@ManyToOne
	@JoinColumn(name="pid")
	public Discuss getDiscuss() {
		return discuss;
	}

	public void setDiscuss(Discuss discuss) {
		this.discuss = discuss;
	}

	@Column(name = "user_id")
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Column(name = "travel_route_id")
	public int getTravelRouteId() {
		return travelRouteId;
	}

	public void setTravelRouteId(int travelRouteId) {
		this.travelRouteId = travelRouteId;
	}
}
