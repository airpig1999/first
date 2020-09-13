package com.tian.service;

import com.tian.dao.CommentMapper;
import com.tian.pojo.Comment;

public class CommentServiceImpl implements CommentService {

    private CommentMapper commentMapper;

    public void setCommentMapper(CommentMapper commentMapper) {
        this.commentMapper = commentMapper;
    }

    public int insert_one_comment(Comment comment) {
        commentMapper.insert_one_comment(comment);
        return 0;
    }
}
