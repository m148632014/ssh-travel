package org.mfm.travel.dao;

import org.mfm.basic.dao.IBaseDao;
import org.mfm.travel.model.PublicUser;

public interface IPublicUserDao extends IBaseDao<PublicUser>{

	PublicUser loadByNickname(String nickname);

}
