package org.mfm.travel.dao;

import java.util.List;

import org.mfm.basic.dao.IBaseDao;
import org.mfm.travel.model.PicDictionary;

public interface IPicDictionaryDao extends IBaseDao<PicDictionary>{

	PicDictionary loadByOwnerId(int id);

	List<Integer> listPicIdByOwner(int id);

}
