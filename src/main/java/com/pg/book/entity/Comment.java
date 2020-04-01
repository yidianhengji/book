package com.pg.book.entity;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class Comment {
    private String uuid;
    private String parentId;
    private String articleId;
    private String userId;
    private String username;
    private String headPic;
    private Integer likeNumber;
    private String content;
    private Date createTime;
    private List<Comment> children;
}
