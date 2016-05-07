package org.mfm.travel.dao;

import java.util.List;

import org.mfm.basic.dao.IBaseDao;
import org.mfm.basic.model.Pager;
import org.mfm.travel.model.Attachment;

public interface IAttachmentDao extends IBaseDao<Attachment> {

	Pager<Attachment> findNoUseAttachment();

	void clearNoUseAttachment();

	List<Attachment> listByTravelStrategy(int tid);


	List<Attachment> listAttachByTravelStrategy(int tid);

	Pager<Attachment> listAllPic();
	
	long findNoUseAttachmentNum();

	void deleteByTravelStrategy(int id);

	Attachment loadPicAttach(int tid);

}
