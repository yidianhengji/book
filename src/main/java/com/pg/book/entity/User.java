package com.pg.book.entity;

import lombok.Data;

import java.util.Date;

@Data
public class User {
    private String uuid;
    private String username;
    private String phone;
    private String password;
    private String headPic;
    private String email;
    private Integer sex;
    private String userWebsite;
    private String account;
    private Date modifyTime;
    private Date createTime;
}
