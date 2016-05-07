package org.mfm.travel.service;

import java.util.List;

import org.mfm.basic.model.Pager;
import org.mfm.travel.model.TravelException;
import org.mfm.travel.model.User;

public interface IUserService {
	public Pager<User> find();

	public List<User> list();

	public User login(String username, String password) throws TravelException;

	public void add(User u) throws TravelException;

	public void delete(int id) throws TravelException;

	public User load(int id);

	public void update(User u);

	User loadByUsername(String username);
}
