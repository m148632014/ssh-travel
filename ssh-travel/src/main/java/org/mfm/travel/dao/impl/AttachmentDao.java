package org.mfm.travel.dao.impl;

import java.util.List;

import org.mfm.basic.dao.BaseDao;
import org.mfm.basic.model.Pager;
import org.mfm.travel.dao.IAttachmentDao;
import org.mfm.travel.model.Attachment;
import org.springframework.stereotype.Repository;
@Repository
public class AttachmentDao extends BaseDao<Attachment> implements IAttachmentDao{

	@Override
	public Pager<Attachment> findNoUseAttachment() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void clearNoUseAttachment() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Attachment> listByTravelStrategy(int tid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Attachment> listAttachByTravelStrategy(int tid) {
		return super.list("from Attachment where travelStrategyId=?", tid);
	}

	@Override
	public Pager<Attachment> listAllPic() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long findNoUseAttachmentNum() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteByTravelStrategy(int id) {
		super.updateByHql("delete Attachment where travelStrategyId=?",id);
	}

	@Override
	public Attachment loadPicAttach(int tid) {
		return (Attachment) super.queryObject("from Attachment where travelStrategyId=? and type=1", tid);
	}


}
