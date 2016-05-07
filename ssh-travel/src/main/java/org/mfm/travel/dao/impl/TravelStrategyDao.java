package org.mfm.travel.dao.impl;

import java.util.List;

import org.mfm.basic.dao.BaseDao;
import org.mfm.basic.model.Pager;
import org.mfm.travel.dao.ITravelStrategyDao;
import org.mfm.travel.model.TravelStrategy;
import org.springframework.stereotype.Repository;
@Repository
public class TravelStrategyDao extends BaseDao<TravelStrategy> implements ITravelStrategyDao{
	@Override
	public Pager<TravelStrategy> findAllStrategy(String name) {
		String hql = "from TravelStrategy ts where 1=1";
		if(name!=null&&!name.equals("")) {
			hql+=" and name like '%"+name+"%'";
		}
		return this.find(hql);
	}

	@Override
	public List<TravelStrategy> list() {
		return super.list("from TravelStrategy");
	}

}
