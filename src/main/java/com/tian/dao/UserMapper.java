package com.tian.dao;

import com.tian.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    List<User> select_all_no_pwd();
    User select_by_name(@Param("user_name") String user_name);
}
