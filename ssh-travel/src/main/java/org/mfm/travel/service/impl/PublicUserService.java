package org.mfm.travel.service.impl;

import javax.inject.Inject;

import org.mfm.travel.dao.IPublicUserDao;
import org.mfm.travel.model.PublicUser;
import org.mfm.travel.service.IPublicUserService;
import org.springframework.stereotype.Service;

@Service
public class PublicUserService implements IPublicUserService{
	@Inject
	private IPublicUserDao publicUserDao;
	@Override
	public void add(PublicUser pu) {
		publicUserDao.add(pu);
	}
	
	@Override
	public void update(PublicUser pu) {
		publicUserDao.update(pu);
	}

	@Override
	public PublicUser loadByNickname(String nickname) {
		return publicUserDao.loadByNickname(nickname);
	}

}
