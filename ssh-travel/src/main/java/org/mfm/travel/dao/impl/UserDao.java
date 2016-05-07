package org.mfm.travel.dao.impl;

import java.util.List;

import org.mfm.basic.dao.BaseDao;
import org.mfm.basic.model.Pager;
import org.mfm.travel.dao.IUserDao;
import org.mfm.travel.model.User;
import org.springframework.stereotype.Repository;
@Repository
public class UserDao extends BaseDao<User> implements IUserDao {

	@Override
	public Pager<User> find() {
		return super.find("from User");
	}

	@Override
	public User loadByUsername(String username) {
		return (User) super.queryObject("from User where username=?", username);
	}

	@Override
	public List<User> list() {
		return super.list("from User");
	}
}
