package org.mfm.travel.dao;

import java.util.List;

import org.mfm.basic.dao.IBaseDao;
import org.mfm.basic.model.Pager;
import org.mfm.travel.model.User;



public interface IUserDao extends IBaseDao<User>{

	Pager<User> find();

	User loadByUsername(String username);

	List<User> list();


}