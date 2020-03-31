package com.pg.book.service;

import com.pg.book.entity.User;

public interface UserService {
    /**
     * 用户注册
     * @param user
     */
    int signUp(User user);
    /**
     * 用户登录
     * @param user
     */
    User signIn(String phone, String password);
}
