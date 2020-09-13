package com.tian.service;

import com.tian.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
    List<User> select_all_no_pwd();
    User select_by_name(String user_name);
}
