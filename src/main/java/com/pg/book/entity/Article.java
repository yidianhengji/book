package com.pg.book.entity;
import lombok.Data;
import java.util.Date;

@Data
public class Article {
    private String uuid;
    private String title;
    private String content;
    private String userId;
    private Integer likeNumber;
    private String commentId;
    private Integer readId;
    private Date createTime;
    private Date modifyTime;
}
