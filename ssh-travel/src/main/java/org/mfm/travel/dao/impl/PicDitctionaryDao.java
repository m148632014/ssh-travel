package org.mfm.travel.dao.impl;

import java.util.List;

import org.mfm.basic.dao.BaseDao;
import org.mfm.travel.dao.IPicDictionaryDao;
import org.mfm.travel.model.PicDictionary;
import org.springframework.stereotype.Repository;
@Repository
public class PicDitctionaryDao extends BaseDao<PicDictionary> implements IPicDictionaryDao{

	@Override
	public PicDictionary loadByOwnerId(int id) {
		return (PicDictionary) super.queryObject("from PicDictionary where ownerId=?", id);
	}

	@Override
	public List<Integer> listPicIdByOwner(int id) {
		return super.listObj("select picId from PicDictionary where ownerId=?", id);
	}

}
