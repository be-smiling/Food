package com.sise.dao;

import com.sise.pojo.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User, Long> {
    public User findByUsernameIsAndPasswordIs(String username, String password);
    User findByUid(Long uid);
}