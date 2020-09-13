package com.tian.service;

import com.tian.dao.UserMapper;
import com.tian.pojo.User;

import java.util.List;

public class UserServiceImpl implements UserService {
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public List<User> select_all_no_pwd() {
        return userMapper.select_all_no_pwd();
    }

    public User select_by_name(String user_name) {
        return userMapper.select_by_name(user_name);
    }
}
