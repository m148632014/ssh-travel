package org.mfm.travel.dto;

import org.mfm.travel.model.Picture;
import org.mfm.travel.model.TravelNote;

public class TravelNoteDto {
	//游记信息
	private TravelNote travelNote;
	//头图
	private Picture picture;

	public TravelNote getTravelNote() {
		return travelNote;
	}

	public void setTravelNote(TravelNote travelNote) {
		this.travelNote = travelNote;
	}

	public Picture getPicture() {
		return picture;
	}

	public void setPicture(Picture picture) {
		this.picture = picture;
	}

	public TravelNoteDto(TravelNote travelNote, Picture picture) {
		this.travelNote = travelNote;
		this.picture = picture;
	}

	public TravelNoteDto() {
	}

}
