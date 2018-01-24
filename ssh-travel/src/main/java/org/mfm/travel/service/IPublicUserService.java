package org.mfm.travel.service;

import org.mfm.travel.model.PublicUser;

public interface IPublicUserService {

    void add(PublicUser pu);

    void update(PublicUser pu);

    PublicUser loadByNickname(String nickname);

}
