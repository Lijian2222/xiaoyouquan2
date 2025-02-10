package com.xiaoyouquan.service;

import com.xiaoyouquan.mapper.UserMapper;
import com.xiaoyouquan.pojo.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService {

    @Resource
    private UserMapper userMapper;

    public User queryUser(User user){
        return userMapper.queryUser(user);
    }

}
