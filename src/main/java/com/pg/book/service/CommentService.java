package com.pg.book.service;

import com.pg.book.entity.Comment;

import java.util.List;

public interface CommentService {
    int insert(Comment comment);

    List<Comment> queryAll(Comment comment);

    int delete(String uuid);
}
