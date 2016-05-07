package org.mfm.travel.dao.impl;

import java.util.List;

import org.mfm.basic.dao.BaseDao;
import org.mfm.travel.dao.ITravelNoteDao;
import org.mfm.travel.model.TravelNote;
import org.springframework.stereotype.Repository;
@Repository
public class TravelNoteDao extends BaseDao<TravelNote> implements ITravelNoteDao {
	@Override
	public List<TravelNote> list() {
		return super.list("from TravelNote");
	}

}
