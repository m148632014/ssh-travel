package org.mfm.travel.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 游记内容
 * 	包含图片、段落、文本 组合而成
 * @author MFM
 *
 */
@Entity
@Table(name="t_note")
public class Note {
	private int id;
	/**
	 * 游记内容类型：
	 * 		主要有文本，段落，图片
	 */
	private NoteType noteType;
	
	private int pos;
	
	/**
	 * 文本
	 */
	private String text;
	
	
	/**
	 * 段落标题
	 */
	private String title;
	
	/**
	 * 所属游记
	 */
	private String travelNoteId; 
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	@Enumerated(EnumType.STRING)
	@Column(name="note_type")
	public NoteType getNoteType() {
		return noteType;
	}

	public void setNoteType(NoteType noteType) {
		this.noteType = noteType;
	}
	
	public int getPos() {
		return pos;
	}

	public void setPos(int pos) {
		this.pos = pos;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	@Column(length=50)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	
	@Column(name="tarvel_note_id")
	public String getTravelNoteId() {
		return travelNoteId;
	}

	public void setTravelNoteId(String travelNoteId) {
		this.travelNoteId = travelNoteId;
	}

	
	
}
