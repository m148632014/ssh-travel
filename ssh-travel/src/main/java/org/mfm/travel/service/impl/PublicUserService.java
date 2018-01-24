package org.mfm.travel.service.impl;

import javax.inject.Inject;

import org.mfm.travel.dao.IPublicUserDao;
import org.mfm.travel.model.PublicUser;
import org.mfm.travel.service.IPublicUserService;
import org.springframework.stereotype.Service;

@Service
public class PublicUserService implements IPublicUserService {

    @Override
    public void add(PublicUser pu) {

    }

    @Override
    public void update(PublicUser pu) {

    }

    @Override
    public PublicUser loadByNickname(String nickname) {
        return null;
    }
}
