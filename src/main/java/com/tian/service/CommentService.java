package com.tian.service;

import com.tian.pojo.Comment;
import org.apache.ibatis.annotations.Param;

public interface CommentService {
    int insert_one_comment(Comment comment);
}
