package com.pg.book.dao;

import com.pg.book.entity.Comment;

import java.util.List;

public interface CommentMapper {

    int insert(Comment comment);

    List<Comment> queryAll(Comment comment);

    /**
     * 根据uuid删除
     * @param uuid
     */
    int deleteUuid(String uuid);

    /**
     * 根据parentId删除
     * @param parentId
     */
    int deleteParentId(String parentId);
}
