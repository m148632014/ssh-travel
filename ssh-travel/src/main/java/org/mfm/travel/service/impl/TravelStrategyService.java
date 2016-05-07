package org.mfm.travel.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.mfm.basic.model.Pager;
import org.mfm.travel.dao.IAttachmentDao;
import org.mfm.travel.dao.ITravelStrategyDao;
import org.mfm.travel.dto.StrategyDto;
import org.mfm.travel.model.Attachment;
import org.mfm.travel.model.TravelStrategy;
import org.mfm.travel.service.ITravelStrategyService;
import org.springframework.stereotype.Service;
@Service
public class TravelStrategyService implements ITravelStrategyService{
	private ITravelStrategyDao travelStrategyDao;
	private IAttachmentDao attachmentDao;
	
	public ITravelStrategyDao getTravelStrategyDao() {
		return travelStrategyDao;
	}

	@Inject
	public void setTravelStrategyDao(ITravelStrategyDao travelStrategyDao) {
		this.travelStrategyDao = travelStrategyDao;
	}

	public IAttachmentDao getAttachmentDao() {
		return attachmentDao;
	}
	@Inject
	public void setAttachmentDao(IAttachmentDao attachmentDao) {
		this.attachmentDao = attachmentDao;
	}

	@Override
	public void delete(int id) {
		//删除数据中的记录
		List<Attachment> atts = attachmentDao.listAttachByTravelStrategy(id);
		attachmentDao.deleteByTravelStrategy(id);
		travelStrategyDao.delete(id);
		//删除硬盘上面的文件
		for(Attachment a:atts) {
			AttachmentService.deleteAttachFiles(a);
		}
	}

	@Override
	public void update(TravelStrategy travelStrategy) {
		travelStrategyDao.update(travelStrategy);
	}

	@Override
	public TravelStrategy load(int id) {
		return travelStrategyDao.load(id);
	}

	private void addTravelStrategyAttachments(TravelStrategy travelStrategy,Integer[] aids) {
		if(aids!=null) {
			for(Integer aid:aids) {
				Attachment a = attachmentDao.load(aid);
				if(a==null) continue;
				a.setTravelStrategyId(travelStrategy.getId());
			}
		}
	}
	@Override
	public void add(TravelStrategy travelStrategy, int uid,Integer[] aids) {
		travelStrategy.setUserId(uid);
		travelStrategy.setCreateDate(new Date());
		travelStrategy.setModifyDate(new Date());
		travelStrategyDao.add(travelStrategy);
		addTravelStrategyAttachments(travelStrategy,aids);
	}

	@Override
	public Pager<TravelStrategy> findAllStrategy(String con) {
		return travelStrategyDao.findAllStrategy(con);
	}

	@Override
	public void update(TravelStrategy travelStrategy, int id, Integer[] aids) {
		travelStrategy.setUserId(id);
		travelStrategy.setModifyDate(new Date());
		travelStrategyDao.update(travelStrategy);		
		addTravelStrategyAttachments(travelStrategy,aids);
	}
	private List<TravelStrategy> listStrategy(){
		return travelStrategyDao.list();
	}
	@Override
	public List<StrategyDto> listStrategyDto() {
		List<StrategyDto> sts = new ArrayList<StrategyDto>();
		for(TravelStrategy s:this.listStrategy()){
			sts.add(new StrategyDto(attachmentDao.loadPicAttach(s.getId()),s));
		}
		return sts;
	}

}
