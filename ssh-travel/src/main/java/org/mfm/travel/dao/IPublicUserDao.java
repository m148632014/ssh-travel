package org.mfm.travel.dao;

import org.mfm.travel.model.PublicUser;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IPublicUserDao extends JpaRepository<PublicUser, Integer> {

//    PublicUser loadByNickname(String nickname);

}
