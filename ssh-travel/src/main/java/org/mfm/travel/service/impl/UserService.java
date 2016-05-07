package org.mfm.travel.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.mfm.basic.model.Pager;
import org.mfm.travel.dao.IUserDao;
import org.mfm.travel.model.TravelException;
import org.mfm.travel.model.User;
import org.mfm.travel.service.IUserService;
import org.springframework.stereotype.Service;

@Service
public class UserService implements IUserService {
	
	private IUserDao userDao;
	
	
	
	public IUserDao getUserDao() {
		return userDao;
	}
	
	@Inject
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public Pager<User> find() {
		return userDao.find();
	}

	@Override
	public User login(String username, String password) {
		User lu = userDao.loadByUsername(username);
		if(lu==null) throw new TravelException("用户名或密码不正确！");
		if(!lu.getPassword().equals(password)) throw new TravelException("用户名或密码不正确！");
		return lu;
	}

	@Override
	public void add(User u) {
		if(userDao.load(u.getId()) != null) throw new TravelException("添加的用户已存在！");
		userDao.add(u);
	}

	@Override
	public void delete(int id) {
		if(userDao.load(id) == null) throw new TravelException("删除的用户不存在！");
		userDao.delete(id);
	}

	@Override
	public User load(int id) {
		return userDao.load(id);
	}

	@Override
	public void update(User u) {
		userDao.update(u);
	}

	@Override
	public User loadByUsername(String username) {
		return userDao.loadByUsername(username);
	}

	@Override
	public List<User> list() {
		return userDao.list();
	}

}
