package com.pg.book.dao;

import com.pg.book.entity.User;

public interface UserMapper {
    /**
     * 用户注册
     * @param user
     */
    int signUp(User user);

    /**
     * 查询手机号码
     * @param phone
     */
    Integer queryPhone(String phone);
    /**
     * 用户登录
     * @param user
     */
    User signIn(String phone);
}
