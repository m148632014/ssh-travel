package org.mfm.travel.service;

import java.io.IOException;
import java.io.InputStream;

import org.mfm.travel.model.Picture;


public interface IPictureService {
	void add(Picture picture,String pictype, InputStream inputStream) throws IOException;

	Picture loadIndexPicByTravelNoteId(int id);
	
}
