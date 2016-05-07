package org.mfm.travel.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 攻略的附件信息
 * 		主要有jpg的zip包和pdf两种类型的附件
 * @author MFM
 *
 */
@Entity
@Table(name="t_attachment")
public class Attachment {
	private int id;
	/**
	 * 附件上传之后的名称
	 */
	private String newName;
	/**
	 * 附件的原始名称
	 */
	private String oldName;
	/**
	 * 附件的类型，这个类型和contentType类型一致
	 */
	private String contentType;
	/**
	 * 附件的后缀名
	 */
	private String suffix;
	/**
	 * 附件的大小
	 */
	private long size;
	/**
	 * 附件类型
	 * 	1为攻略的封皮
	 * 	2为pdf
	 *  3为zip/rar包
	 */
	private int type;
	/**
	 * 附件所属攻略
	 */
	private int travelStrategyId;
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	@Column(name="new_name",length=30)
	public String getNewName() {
		return newName;
	}

	public void setNewName(String newName) {
		this.newName = newName;
	}
	@Column(name="old_name")
	public String getOldName() {
		return oldName;
	}
	
	public void setOldName(String oldName) {
		this.oldName = oldName;
	}
	
	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	@Column(length=1)
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getSuffix() {
		return suffix;
	}

	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	public long getSize() {
		return size;
	}

	public void setSize(long size) {
		this.size = size;
	}

	@Column(name="travel_strategy_id")
	public int getTravelStrategyId() {
		return travelStrategyId;
	}

	public void setTravelStrategyId(int travelStrategyId) {
		this.travelStrategyId = travelStrategyId;
	}


	
	
	
}
