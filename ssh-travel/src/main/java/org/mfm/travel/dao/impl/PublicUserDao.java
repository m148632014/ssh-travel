package org.mfm.travel.dao.impl;

import org.mfm.travel.dao.IPublicUserDao;
import org.mfm.travel.model.PublicUser;
import org.mfm.basic.dao.BaseDao;
import org.springframework.stereotype.Repository;
@Repository
public class PublicUserDao extends BaseDao<PublicUser> implements IPublicUserDao{

	@Override
	public PublicUser loadByNickname(String nickname) {
		return (PublicUser) super.queryObject("from PublicUser where nickname=?",nickname);
	}

}
