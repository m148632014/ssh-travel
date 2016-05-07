package org.mfm.travel.service.impl;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.inject.Inject;

import org.apache.commons.io.FileUtils;
import org.mfm.basic.model.SystemRequestHolder;
import org.mfm.travel.dao.IPicDictionaryDao;
import org.mfm.travel.dao.IPictureDao;
import org.mfm.travel.model.PicDictionary;
import org.mfm.travel.model.Picture;
import org.mfm.travel.service.IPictureService;
import org.springframework.stereotype.Service;


@Service
public class PictureService implements IPictureService{
	@Inject
	private IPicDictionaryDao  picDictionaryDao;
	@Inject
	private IPictureDao pictureDao;
	@Override
	public void add(Picture picture, String pictype,InputStream is) throws IOException {
		//A:段落图片B：游记图片G：游记头图
		if(pictype == "B"){
			picture.setHeight(400);
			picture.setWidth(600);
		}else if(pictype == "A"){
			picture.setHeight(150);
			picture.setWidth(600);
		}else{
			picture.setHeight(480);
			picture.setWidth(1680);
		}
		addFile(picture,is);
		PicDictionary pd = new PicDictionary();
		pictureDao.add(picture);
		pd.setPicId(picture.getId());
		pd.setPictype(pictype);
		pd.setOwnerId(0);//暂时不设置，默认为0
		picDictionaryDao.add(pd);
	}
	private void addFile(Picture picture, InputStream is) throws IOException {
			String realPath =  SystemRequestHolder.getSystemRequest().getRealpath();
			String path = realPath+"/resources/upload/tnpics";
			File fp = new File(path);
			if(!fp.exists()) fp.mkdirs();
			path = path+picture.getNewName();
			FileUtils.copyInputStreamToFile(is, new File(path));
	}
	@Override
	public Picture loadIndexPicByTravelNoteId(int id) {
		PicDictionary  picDictionary = picDictionaryDao.loadByOwnerId(id);
		return pictureDao.load(picDictionary.getPicId());
	}
	
}
