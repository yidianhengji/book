package com.pg.book.controller;

import com.pg.book.entity.User;
import com.pg.book.handler.BusinessStatus;
import com.pg.book.handler.Result;
import com.pg.book.service.UserService;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping(value = "/signUp", method = RequestMethod.POST)
    public Result<User> signUp(@RequestBody User user) {
        userService.signUp(user);
        return new Result<User>(BusinessStatus.SUCCESS);
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public Result<User> signIn(@RequestBody User user) {
        User signIn = userService.signIn(user.getPhone(), user.getPassword());
        return new Result<User>(BusinessStatus.SUCCESS, signIn);
    }
}
