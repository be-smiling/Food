package com.sise.service;


import com.sise.pojo.User;

public interface UserService {

    public User findByUsernameIsAndPasswordIs(String username, String passord);
    User findByUid(Long uid);
}
