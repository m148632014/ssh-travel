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


    @Override
    public Pager<User> find() {
        return null;
    }

    @Override
    public List<User> list() {
        return null;
    }

    @Override
    public User login(String username, String password) throws TravelException {
        return null;
    }

    @Override
    public void add(User u) throws TravelException {

    }

    @Override
    public void delete(int id) throws TravelException {

    }

    @Override
    public User load(int id) {
        return null;
    }

    @Override
    public void update(User u) {

    }

    @Override
    public User loadByUsername(String username) {
        return null;
    }
}
