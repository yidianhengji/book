package com.pg.book.dto;

import lombok.Data;

import java.util.Date;

@Data
public class ArticleDto {
    private String title;
    private String content;
    private String userId;
    private Date createTime;
    private Date modifyTime;
    private Integer pageSize;
    private Integer pageNum;
}
