package org.mfm.travel.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.mfm.travel.dao.IPicDictionaryDao;
import org.mfm.travel.dao.IPictureDao;
import org.mfm.travel.dao.ITravelNoteDao;
import org.mfm.travel.model.Note;
import org.mfm.travel.model.TravelNote;
import org.mfm.travel.service.ITravelNoteService;
import org.springframework.stereotype.Service;

@Service
public class TravelNoteService implements ITravelNoteService{
	@Inject
	private ITravelNoteDao travelNoteDao;
	@Inject
	private IPicDictionaryDao picDictionaryDao;
	@Inject
	private IPictureDao pictureDao;
	@Override
	public void add(TravelNote travelNote, int uid, Note[] notes) {
		travelNoteDao.add(travelNote);
	}

	@Override
	public List<TravelNote> listAll() {
		return travelNoteDao.list();
	}

	@Override
	public void delete(int id) {
		//1.删除数据中的记录
		//1)游记所有的图片记录
		List<Integer> picIds = picDictionaryDao.listPicIdByOwner(id);
		for(Integer picId:picIds){
			pictureDao.delete(picId);
		}
		//2)游记所有的段落记录 
		
		//3)游记记录

		travelNoteDao.delete(id);
		//2.删除硬盘上面的文件
		//for(Picture :atts) {
			//AttachmentService.deleteAttachFiles(a);
		//}
	}
	
}
