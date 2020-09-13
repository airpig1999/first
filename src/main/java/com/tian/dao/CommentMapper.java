package com.tian.dao;

import com.tian.pojo.Comment;
import org.apache.ibatis.annotations.Param;

public interface CommentMapper {
    int insert_one_comment(@Param("comment") Comment comment);
}
