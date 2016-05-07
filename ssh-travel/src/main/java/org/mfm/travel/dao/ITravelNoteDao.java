package org.mfm.travel.dao;

import java.util.List;

import org.mfm.basic.dao.IBaseDao;
import org.mfm.travel.model.TravelNote;

public interface ITravelNoteDao extends IBaseDao<TravelNote> {

	List<TravelNote> list();

}
