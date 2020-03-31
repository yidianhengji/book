package com.pg.book.service.impl;

import com.pg.book.dao.UserMapper;
import com.pg.book.entity.User;
import com.pg.book.handler.BusinessException;
import com.pg.book.handler.BusinessStatus;
import com.pg.book.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public int signUp(User user) {
        Integer count = userMapper.queryPhone(user.getPhone());
        // 判断手机号码是否存在
        if (count > 0) {
            throw new BusinessException(BusinessStatus.MOBILE_ERROR);
        }
        user.setUuid(UUID.randomUUID().toString().replace("-", ""));
        user.setCreateTime(new Date());
        user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
        return userMapper.signUp(user);
    }

    @Override
    public User signIn(String phone, String password) {
        // phone字段校验
        if (phone == null || phone.isEmpty()) {
            throw new BusinessException(BusinessStatus.USERNAME_REQ);
        }
        // password字段校验
        if (password == null || password.isEmpty()) {
            throw new BusinessException(BusinessStatus.PASSWORD_REQ);
        }
        User user = userMapper.signIn(phone);
        if (user == null) {
            throw new BusinessException(BusinessStatus.USER_ERROR);
        }
        String usedPassword = user.getPassword();
        String newPassword = DigestUtils.md5DigestAsHex(password.getBytes());
        // 比较密码是否一致
        if (!usedPassword.equals(newPassword)) {
            throw new BusinessException(BusinessStatus.PASSWORD_ERROR);
        }
        return user;
    }

}
