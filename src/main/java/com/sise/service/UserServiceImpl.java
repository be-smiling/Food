package com.sise.service;

import com.sise.dao.UserDao;
import com.sise.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User findByUid(Long uid) {
        return userDao.findByUid(uid);
    }

    @Override
    public User findByUsernameIsAndPasswordIs(String username, String passord) {
        return userDao.findByUsernameIsAndPasswordIs(username,passord);
    }


}
