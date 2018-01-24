package org.mfm.travel.dao;

import java.util.List;

import org.mfm.basic.model.Pager;
import org.mfm.travel.model.User;
import org.springframework.data.jpa.repository.JpaRepository;


public interface IUserDao extends JpaRepository<User, Integer> {

//    Pager<User> find();
//
//    User loadByUsername(String username);
//
//    List<User> list();


}