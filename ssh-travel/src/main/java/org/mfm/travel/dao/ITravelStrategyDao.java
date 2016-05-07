package org.mfm.travel.dao;

import java.util.List;

import org.mfm.basic.dao.IBaseDao;
import org.mfm.basic.model.Pager;
import org.mfm.travel.model.TravelStrategy;

public interface ITravelStrategyDao extends IBaseDao<TravelStrategy> {

	Pager<TravelStrategy> findAllStrategy(String con);

	List<TravelStrategy> list();
	
}
