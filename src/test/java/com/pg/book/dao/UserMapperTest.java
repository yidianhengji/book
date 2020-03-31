package com.pg.book.dao;

import com.pg.book.BookApplicationTests;
import com.pg.book.entity.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.UUID;

import static org.junit.Assert.*;

public class UserMapperTest extends BookApplicationTests {

    @Autowired
    private UserMapper userMapper;

    @Test
    public void signUp() {
        User user = new User();
        user.setUuid(UUID.randomUUID().toString().replace("-", ""));
        user.setUsername("张三");
        user.setPassword("123456");
        user.setPhone("18588773301");
        Integer count = this.userMapper.queryPhone(user.getPhone());
        System.out.println("11111111111111111111111");
        System.out.println(count);
        //this.userMapper.signUp(user);
    }

}